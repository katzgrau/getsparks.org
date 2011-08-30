<?php
/**
 * Grab all sparks that haven't been verified and verify them
 */

# Set the right directories
define('IS_BOOTSTRAP', TRUE);
$webroot = dirname(__FILE__) . '/../';
chdir($webroot);

# Load up CodeIgniter
require_once $webroot . 'index.php';

# Load up the spark libs
$CI = &get_instance();
$CI->load->model('spark');
$CI->load->model('contributor');
$CI->load->spark('spark-sdk/1.0');
$CI->load->spark('markdown/1.1');

# Set the spark path
$spark_path = WEBROOT . config_item('archive_path');

# Grab the unverified sparks
$sparks = Spark::getUnverified();

# A place to hold successfull/unsuccessful
$successful   = array();
$unsuccessful = array();

# Roll through each unverified spark
foreach($sparks as $spark)
{
    $handle = md5(uniqid());
    $tmp    = "/tmp/$handle";

    # Create a temporary holding place
    mkdir($tmp);
    chdir($tmp);

    # Pull down a copy
    if($spark->repository_type == 'hg')
    {
        `hg clone -r$spark->tag $spark->base_location $tmp`;
    }
    elseif($spark->repository_type == 'git')
    {
        $token = 'spark-' . $spark->id . '-' . time();
        `git clone $spark->base_location $tmp`;
        `cd $tmp ; git checkout $spark->tag -b $token ; cd ..`;
    }
    else
    {
        echo "Unknown repo type ($spark->repository_type) for {$spark->name}.. skipping.\n";
        $unsuccessful[] = $spark;
        continue;
    }

    # Switch back to the webroot
    chdir($webroot);

    try
    {
        # All or nothing. Verify versions aand insert dependencies atomically
        $CI->db->trans_begin();
        # Load and validate the basics of the spark's YAML Spec
        $spec = Spark_spec::loadFromDirectory($tmp);
        # Check that everything looks with the spec on our end
        $spark->runPreSubmissionChecks($spec);
        # Add any dependencies in the spec
        $spark->processDependencies($spec);
        # Set the version
        $spark->setVersion($spec->version);
        # If there's a README file, store the contents
        $release     = "{$spark->name}-{$spec->version}";
        $release_dir = $spark_path . $spark->name;

        if($readme = $spec->getReadme())
        {
            $readme = file_get_contents($tmp.'/'.$readme);
            $spark->setVersionReadme($spec->version, $readme);
        }
        # Mark this spark as verified
        $spark->setVerified($spec->version, TRUE, base_url().config_item('archive_path').$spark->name.'/'.$release.".zip");
        # Commit anything we've done
				if($CI->db->trans_status() !== FALSE) 
					  $CI->db->trans_commit();
				else
					  throw new Exception("There was an unknown error processing the spark :(");
        # Yay, keep track of it
        $successful[] = $spark;
    }
    catch(Exception $ex)
    {
			  $CI->db->trans_rollback();
        echo "Error processing {$spark->name} - {$spark->tag}: " . $ex->getMessage() . ". Removing..\n";
        $errors = array($ex->getMessage());
        $spark->removeTagAndNotify($spark->tag, $errors);
        $unsuccessful[] = $spark;
        `rm -rf $tmp`;
        continue;
    }

    # Switch back to the tmp dir
    chdir($tmp);
    # The spark's been added, now do some disk cleanup
    @mkdir($release_dir, 0777, TRUE);
    `zip -r $release.zip *`;
    @copy("$tmp/$release.zip", $release_dir."/$release.zip");
    echo "Verified $spark->name v$spec->version -- $tmp\n";
    `rm -rf $tmp`;
}

echo "\n" . count($unsuccessful) . " errors.\n";
foreach($unsuccessful as $spark)
{
    echo "$spark->id - $spark->name - $spark->tag\n";
}
