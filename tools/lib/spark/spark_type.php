<?php

class Spark {

    function __construct($name, $data) {
        $this->name = $name;
        $this->data = $data;
        $this->spark_id = $this->data->id;
        $this->version = $this->data->version;
        $this->base_location = $this->data->base_location;
        
        // see if this is deactived
        if ($this->data->is_deactivated) {
            $msg = 'Woah there - it seems the spark you want has been deactivated';
            if ($this->data->spark_home) $msg .= "\nLook for different versions at: " . $this->data->spark_home;
            throw new SparkException($msg);
        }

        if ($this->data->is_unsupported) {
            SparkUtils::warning('This spark is no longer supported.');
            SparkUtils::warning('You can keep using it, or look for an alternate');
        }
        
        // used internally
        $this->temp_token = 'spark-' . $this->spark_id . '-' . time();
        $this->temp_path = sys_get_temp_dir() . '/' . $this->temp_token;

        // tell the user if its already installed and throw an error
        $this->installation_path = SPARK_PATH . "/$this->name/$this->version";
        if (is_dir($this->installation_path)) {
            throw new SparkException("Already installed.  Try `php tools/spark remove $this->name`");
        }
    }

    final function installed_path() {
        return $this->installed_path;
    }

    function location_detail() { }
    function retrieve() { }

    function install() {
        @mkdir(SPARK_PATH); // Two steps for windows
        @mkdir(SPARK_PATH . "/$this->name");
        $success = @rename($this->temp_path, $this->installation_path);
        if ($success) $this->installed_path = $this->installation_path;
    }

}
