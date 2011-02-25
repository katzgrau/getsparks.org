<?php
require_once 'spark_type.php';
require_once 'spark_types/git_spark.php';
require_once 'spark_types/hg_spark.php';
require_once 'spark_types/zip_spark.php';

class SparkSource {

    function __construct($url) {
        $this->url = $url;
    }    

    function get_url() {
        return $this->url;
    }

    // get details on an individual spark
    function get_spark_detail($spark_name, $version = 'HEAD') {
        $json_data = @file_get_contents("http://$this->url/api/packages/$spark_name/versions/$version/spec");
        if (!$json_data) return null; // no such spark here
        $data = json_decode($json_data);
        // if we don't succeed - throw an error
        if ($data == null || !$data->success) {
            $message = "Error retrieving spark detail from source: $this->url";
            if ($data != null) $message .= " ($data->message)";
            throw new SparkException($message);
        }
        // Get the detail for this spark
        return $this->get_spark($data->spec);
    }

    // get details on multiple sparks by search term
    function search($term) {
        $json_data = @file_get_contents("http://$this->url/api/packages/search?q=" . urlencode($term)); 
        $data = json_decode($json_data);
        // if the data isn't around of success is false, return a warning for this source
        if ($data == null || !$data->success) {
            $message = "Error searching source: $this->url";
            if ($data != null) $message .= " ($data->message)";
            SparkUtils::warning($message);
            return array();
        }
        // Get sparks for each one
        $results = array();
        foreach($data->results as $data) $results[] = $this->get_spark($data);
        return $results;
    }

    private function get_spark($data) {
        if ($data->repository_type == 'hg') return MercurialSpark::get_spark($data);
        else if ($data->repository_type == 'git') return GitSpark::get_spark($data);
        else if ($data->repository_type == 'zip') return new ZipSpark($data);
        else throw new Exception('Unknown repository type: ' . $data->repository_type);
    }

}
