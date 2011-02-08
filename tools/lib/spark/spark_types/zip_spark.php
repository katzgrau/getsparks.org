<?php

class ZipSpark extends Spark {

    function __construct($name, $data) {
        parent::__construct($name, $data);
        $this->temp_file = $this->temp_path . '.zip';
    }

    function location_detail() {
        return "ZIP file at $this->base_location";
    } 

    function retrieve() {
        file_put_contents($this->temp_file, file_get_contents($this->base_location));
        system("unzip $this->temp_file -d $this->temp_path"); 
        return file_exists($this->temp_path);
    }

}
