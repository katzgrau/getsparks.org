<?php

class Spark {

    function __construct($data) {
        $this->data = $data;
        $this->name = $this->data->name;
        $this->spark_id = $this->data->id;
        $this->version = property_exists($this->data, 'version') ? $this->data->version : null;
        $this->base_location = $this->data->base_location;
       
        // used internally
        $this->temp_token = 'spark-' . $this->spark_id . '-' . time();
        $this->temp_path = sys_get_temp_dir() . '/' . $this->temp_token;
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

        // if rename() failed let's try copying manually
        if ( ! $success)
        {
            $this->copy_recursive($this->temp_path, $this->installation_path);
            $this->delete_recursive($this->temp_path);
            $success = is_dir($this->installation_path);
        }

        if ($success) $this->installed_path = $this->installation_path;
    }
    
    function verify() {
        // see if this is deactivated
        if ($this->data->is_deactivated) {
            $msg = 'Woah there - it seems the spark you want has been deactivated';
            if ($this->data->spark_home) $msg .= "\nLook for different versions at: " . $this->data->spark_home;
            throw new SparkException($msg);
        }
        // see if this is unsupported
        if ($this->data->is_unsupported) {
            SparkUtils::warning('This spark is no longer supported.');
            SparkUtils::warning('You can keep using it, or look for an alternate');
        }
        // tell the user if its already installed and throw an error
        $this->installation_path = SPARK_PATH . "/$this->name/$this->version";
        if (is_dir($this->installation_path)) {
            throw new SparkException("Already installed.  Try `php tools/spark remove $this->name`");
        }
    }

    function copy_recursive($source, $target)
    {
        if (is_dir($source))
        {
            @mkdir($target);
            $dir = dir($source);

            while ( FALSE !== ($entry = $dir->read()) )
            {
                if ($entry == '.' || $entry == '..')
                {
                    continue;
                }

                $child_entry = $source.'/'.$entry;

                if (is_dir($child_entry))
                {
                    $this->copy_recursive($child_entry, $target.'/'.$entry);
                    continue;
                }
                copy($child_entry, $target.'/'.$entry);
            }
            $dir->close();
        }
        else
        {
            copy($source, $target);
        }
    }

    function delete_recursive($source)
    {
        if (is_dir($source))
        {
            $objects = scandir($source);

            foreach ($objects as $object)
            {
                if ($object != '.' && $object != '..')
                {
                    if (filetype($source.'/'.$object) == 'dir')
                    {
                        $this->delete_recursive($source.'/'.$object);
                    }
                    else
                    {
                        unlink($source.'/'.$object);
                    }
                }
            }
            reset($objects);
            rmdir($source);
         }
         else
         {
            unlink($source);
         }
    }
}
