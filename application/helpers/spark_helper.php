<?php
/**
 * This file contains a helper class for handling sprak utility functions
 */

/**
 * A helper class for delaing with things like validation potential sparks,
 *  loading readmes, etc.
 */
class SparkHelper
{
    /**
     * Inspect a directory that is supposedly is a spark, and see if it looks
     *  like it really is one
     * @param string $spark_info
     * @param string $directory The spark to validate
     * @return array An array of errors (empty if none)
     */
    public static function validateSpark($spark_info, $directory)
    {
        $errors = array();
        # If the directory doesn't exist it was probably a bad checkotu
        if(!file_exists($directory))
        {
            $errors[] = "The clone URL/tag combo does not seem to be valid: {$spark_info->base_location}, tag '{$spark_info->version}'";
            return $errors;
        }

        $directory = rtrim($directory, '/') . '/';

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
            $errors[] = "The spark should contain a config, helpers, models, libraries, or views directory to be useful. This spark has none of that.";
            return $errors;
        }

        return $errors;
    }

    /**
     * Given a directory, return the filename of any readme file if it exists
     * @param string $dir The directory to search
     * @return mixed A filename if found, bool false if not
     */
    public static function getReadme($dir)
    {
        $CI = &get_instance();
        $dir = rtrim($dir, '/') . '/';

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

        if(!$readme) return FALSE;

        # Let's not get hosed by some guy with a 10GB README
        $max_size = 1024 * 256; # 256 kb
        if(filesize($dir.$file) > $max_size)
        {
            return FALSE;
        }
        else
        {
            return $file;
        }
    }
}