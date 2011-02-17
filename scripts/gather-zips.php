<?php

define('IS_BOOTSTRAP', TRUE);
require_once dirname(__FILE__) . '/../index.php';

# Load up the spark libs
$CI = &get_instance();
$CI->load->model('spark');

$spark_path = WEBROOT . config_item('archive_path');

# Grab the unverified sparks
$sparks = Spark::getUnverified();

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
    }

    # TODO: Validate
    @mkdir($release_dir, null, TRUE);
    `zip $release.zip *`;
    @copy("$tmp/$release.zip", $release_dir."/$release.zip");

    $spark->setVerified($spark->version, TRUE, base_url().config_item('archive_path').$spark->name.'/'.$release.".zip");

    echo "Verified $spark->name -- $tmp\n";
}