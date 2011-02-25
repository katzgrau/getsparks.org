<?php

class ZipSpark extends Spark {

    function __construct($data) {
        parent::__construct($data);
        $this->temp_file = $this->temp_path . '.zip';
        $this->archive_url = $data->archive_url;
    }

    function location_detail() {
        return "ZIP archive at $this->base_location";
    } 

    private static function unzip_installed() {
        return !!`unzip`;
    }

    function retrieve() {
        file_put_contents($this->temp_file, file_get_contents($this->archive_url));
        // Try a few ways to unzip 
        if (class_exists('ZipArchive')) {
            $zip = new ZipArchive;
            $zip->open($this->temp_file);
            $zip->extractTo($this->temp_path);
            $zip->close();
        } else {
            if (!self::unzip_installed()) throw new SparkException('You have to install PECL ZipArchive or `unzip` to install this spark.');
            `unzip $this->temp_file -d $this->temp_path`;
        }
        return file_exists($this->temp_path);
    }

}
