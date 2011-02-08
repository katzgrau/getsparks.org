<?php

class MercurialSpark extends Spark {

    function __construct($name, $data) {
        if (!self::hg_installed()) throw new SparkException('Mercurial must be installed to use this spark');
        parent::__construct($name, $data);
        $this->tag = $this->data->version;
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
