<?php

class MercurialSpark extends Spark {

    function __construct($data) {
        parent::__construct($data);
        $this->tag = $this->version;
    }

    static function get_spark($data) {
        if (self::hg_installed()) {
            return new MercurialSpark($data);
        } else {
            SparkUtils::warning('Mercurial not found - reverting to archived copy');
            return new ZipSpark($data);
        }
    }

    private static function hg_installed() {
        return !!`hg`;
    }

    function location_detail() {
        return "Mercurial repository at $this->base_location";
    }

    function retrieve() {
        `hg clone -r$this->tag $this->base_location $this->temp_path`;
        // remove the mercurial directory
        SparkUtils::remove_full_directory("$this->temp_path/.hg");
        return file_exists($this->temp_path);
    }

}
