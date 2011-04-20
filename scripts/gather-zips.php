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
    $release= "{$spark->name}-{$spark->version}";
    $release_dir = $spark_path . $spark->name;

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

    try
    {
        # All or nothing. Verify versions aand insert dependencies atomically
        $CI->db->trans_start();
        # Load the spark's YAML Spec
        $spec = Spark_spec::loadFromDirectory($tmp);
        # Add any dependencies in the spec
        $spark->processDependencies($spec);
        # If there's a README file, store the contents
        if($readme = $spec->getReadme())
        {
            $readme = file_get_contents($tmp.'/'.$readme);
            $spark->setVersionReadme($spark->version, $readme);
        }
        # Mark this spark as verified
        $spark->setVerified($spark->version, TRUE, base_url().config_item('archive_path').$spark->name.'/'.$release.".zip");
        # Commit anything we've done
        $CI->db->trans_complete();
        # Yay, keep track of it
        $successful[] = $spark;
    }
    catch(Exception $ex)
    {
        echo "Error processing {$spark->name} - {$spark->version}: " . $ex->getMessage() . ". Removing..\n";
        $errors = array($ex->getMessage());
        $spark->removeVersionAndNotify($spark->version, $errors);
        $unsuccessful[] = $spark;
        `rm -rf $tmp`;
        continue;
    }

    # The spark's been added, now do some disk cleanup
    @mkdir($release_dir, 0777, TRUE);
    `zip -r $release.zip *`;
    @copy("$tmp/$release.zip", $release_dir."/$release.zip");
    echo "Verified $spark->name v$spark->version -- $tmp\n";
    `rm -rf $tmp`;
}

echo "\n" . count($unsuccessful) . " errors.\n";
foreach($unsuccessful as $spark)
{
    echo "$spark->id - $spark->name - $spark->version\n";
}