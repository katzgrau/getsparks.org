<?php
/**
 * This file contains a class for defining a spark.
 */

/**
 * This class defines a spark. That is, it contains information about
 *  a spark's name, the version, and dependency information
 */
class Spark_spec {

    /**
     * The registered name of a spark. This is purely informational.
     * @var string
     */
    public $name = '';

    /**
     * The version information for this spark
     * @var string Must be in the format x.x.x
     */
    public $version = '';

    /**
     * An array of dependencies, which are also
     * @var array[array] array (
     *  array('name1', 'x.x.x'),
     *  array('name2', 'x.x.x'),
     * )
     */
    public $dependencies = array();

    /**
     * The filename of the spec, including the filepath if necesarry
     * @var string
     */
    private $_specFile = 'spec.php';
    
    /**
     * The path to the spark, which is guessed from the specFile filepath supplied
     * @var string
     */
    private $_sparkPath = '';

    /**
     * The filepath of the readme file, if we find it
     * @var string
     */
    private $_readme = FALSE;
    
    /**
     * Load a spark spec file and validate it
     * @param string $filepath
     * @return Spark_spec
     */
    public static function loadFromDirectory($filepath)
    {
        $spec       = array();
        $filepath   = rtrim($filepath, '/') . '/';
        $specfile   = $filepath . 'spec.php';
        
        /* Check that the spark file exists */
        if(!file_exists($specfile))
        {
            throw new SpecValidationException("The spec file does not exist: $specfile");
        }

        /* Load it, it should have a $spec array inside it */
        include($specfile);

        if(!is_array($spec))
        {
            throw new SpecValidationException("The spec does not contain valid spec information: $specfile");
        }

        /* Create a spec instance */
        $spark = new self();
        $spark->_specFile = $specfile;
        $spark->_sparkPath = $filepath;

        /* Check for each individual component and load it */
        if(!array_key_exists('name', $spec))
        {
            throw new SpecValidationException("The spec does not contain a spec name: $specfile");
        }

        $spark->name = $spec['name'];

        if(!array_key_exists('version', $spec))
        {
            throw new SpecValidationException("The spec does not contain a spec version: $specfile");
        }

        $spark->version = $spec['version'];

        if(!array_key_exists('dependencies', $spec))
        {
            throw new SpecValidationException("The spec does not contain a spec dependency: $specfile");
        }
        
        $spark->dependencies = $spec['dependencies'];

        $spark->validate();

        return $spark;
    }

    /**
     * Validate this spark. Throws an exception if things look broken
     * @throws SpecValidationException
     */
    public function validate()
    {
        $this->_validateName($this->name);
        $this->_validateVersion($this->version);
        $this->_validateDependencies($this->dependencies);
        $this->_validateStructure($this->_sparkPath);
        $this->_validateReadme($this->_sparkPath);
    }

    /**
     * Return the filepath of the README file, if it was found.
     * @return mixed A filename if found, bool false if not
     */
    public function getReadme()
    {
        return $this->_readme;
    }

    /**
     * Validate a version string
     * @throws SpecValidationException
     * @param string $version
     */
    private function _validateVersion($version)
    {
        /* Validate the version */
        $versions = explode('.', $version);

        if(count($versions) != 3)
        {
            throw new SpecValidationException("The spark version must be in the format of x.x.x: {$version}");
        }

        foreach($versions as $v)
        {
            if(!is_numeric($v) || $v < 0)
            {
                throw new SpecValidationException("Each component of the versions string must be an integer >= 0: {$version}");
            }
        }
    }

    /**
     * Validate a Spark name
     * @throws SpecValidationException
     * @param string $name
     */
    private function _validateName($name)
    {
        /* Validate the name of the spark */
        if(!is_string($name))
        {
            throw new SpecValidationException("The name of the specification must be a string: {$name}");
        }

        if(strlen($name) == 0)
        {
            throw new SpecValidationException("The name of this spark must be greater than 1 character long: {$name}");
        }
    }

    /**
     * Validate dependency information
     * @throws SpecValidationException
     * @param array $dependencies
     */
    private function _validateDependencies($dependencies)
    {
        /* Validate the dependencies */
        if(!is_array($dependencies))
        {
            throw new SpecValidationException("The dependency information should be an array.");
        }

        foreach($dependencies as $d)
        {
            if(!is_array($d))
            {
                throw new SpecValidationException("Each dependency in the dependency array should be described as an array.");
            }

            if(count($d) != 2)
            {
                throw new SpecValidationException("Each dependency in the dependency array should consist of 2 elements: name and version");
            }

            $this->_validateName($d[0]);

            $this->_validateVersion($d[1]);
        }
    }

    /**
     * Inspect a directory that is supposedly is a spark, and see if it looks
     *  like it really is one
     * @param string $spark_info
     * @param string $directory The spark to validate
     * @return array An array of errors (empty if none)
     */
    private function _validateStructure($directory)
    {
        $errors = array();
        # If the directory doesn't exist it was probably a bad checkotu
        if(!file_exists($directory))
        {
            throw new SpecValidationException("This directory structure does not seem to be valid");
        }

        $has_something = false;

        # If the directory doesn't exist it was probably a bad checkout
        $something = array('config','helpers','models','libraries','views');

        foreach($something as $item)
        {
            if(file_exists($directory . $item))
                $has_something = TRUE;
        }

        if(!$has_something)
        {
            throw new SpecValidationException("The spark should contain a config, helpers, models, libraries, or views directory to be useful. This spark has none of that.");
        }
    }

    /**
     * Given a directory, return the filename of any readme file if it exists
     * @param string $dir The directory to search
     */
    private static function _validateReadme($dir)
    {
        $CI = &get_instance();
        $CI->load->helper('file');

        $files = get_filenames($dir);

        $readme = FALSE;
        $file   = '';
        foreach($files as $f)
        {
            $lfile = strtolower($f);
            if(strpos($lfile, 'readme') === 0)
            {
                $readme = TRUE;
                $file = $f;
                break;
            }
        }

        /* No README, that's okay. No Biggie */
        if(!$readme) return;

        # Let's not get hosed by some guy with a 10GB README
        $max_size = 1024 * 256; # 256 kb
        if(filesize($dir.$file) > $max_size)
        {
            throw new SpecValidationException("A README file exists, but it's over 256k, and that's lame.");
        }
        else
        {
            $this->_readme = $file;
        }
    }
}

/**
 * An exception class for Spark validation exceptions
 */
class SpecValidationException extends Exception { }