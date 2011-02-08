<?php
require_once 'spark_type.php';
require_once 'spark_types/git_spark.php';
require_once 'spark_types/hg_spark.php';
require_once 'spark_types/zip_spark.php';

class SparkSource {

    function get_spark_detail($spark_name, $version = 'HEAD') {
        $json_data = @file_get_contents('http://' . $this->url . "/packages/$spark_name/versions/$version/spec.json");
        if (!$json_data) return null; // no such spark here
        $data = json_decode($json_data);

        if ($data->repository_type == 'hg') return new MercurialSpark($spark_name, $data);
        else if ($data->repository_type == 'git') return new GitSpark($spark_name, $data);
        else if ($data->repository_type == 'zip') return new ZipSpark($spark_name, $data);

        else throw new Exception('Unknown repository type: ' . $data['repository_type']);
    }

    function __construct($url) {
        $this->url = $url;
    }    

    function get_url() {
        return $this->url;
    }

}
