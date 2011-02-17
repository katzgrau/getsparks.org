<?php


# Set the right directories
define('IS_BOOTSTRAP', TRUE);
$webroot = dirname(__FILE__) . '/../';
chdir($webroot);

require_once $webroot . 'index.php';


# Load up the spark libs
$CI = &get_instance();
$CI->load->model('spark');

# Set the spark path
$spark_path = WEBROOT . config_item('archive_path');

# Grab the unverified sparks
$sparks = Spark::getUnverified();

# A place to hold successfull/unsuccessful
$successful   = array();
$unsuccessful = array();

foreach($sparks as $spark)
{
    $handle = md5(uniqid());
    $tmp    = "/tmp/$handle";
    $release= "{$spark->name}-v{$spark->version}";
    $release_dir = $spark_path . $spark->name;

    mkdir($tmp);
    chdir($tmp);

    if($spark->repository_type == 'hg')
    {
        `hg clone -r$spark->version $spark->base_location $tmp`;
    }
    elseif($spark->repository_type == 'git')
    {
        $token = 'spark-' . $spark->id . '-' . time();
        `git clone $spark->base_location $tmp`;
        `git checkout $spark->version -b $token`;
    }
    else
    {
        echo "Unknown repo type ($spark->repository_type) for {$spark->name}.. skipping.\n";
        $unsuccessful[] = $spark;
        continue;
    }

    # TODO: Validate
    @mkdir($release_dir, 0777, TRUE);
    `zip -r $release.zip *`;
    @copy("$tmp/$release.zip", $release_dir."/$release.zip");

    $spark->setVerified($spark->version, TRUE, base_url().config_item('archive_path').$spark->name.'/'.$release.".zip");
    $successful[] = $spark;

    echo "Verified $spark->name v$spark->version -- $tmp\n";
}

echo "\n" . count($unsuccessful) . " errors.\n";
foreach($unsuccessful as $spark)
{
    echo "$spark->id - $spark->name - $spark->version\n";
}