<?php
/**
 * This file contains a utility class for doing misc. things around the site
 */

/**
 * A class for doing boring things that don't fit in any other helper or library
 */
class UtilityHelper
{
    /**
     * Get the number of total installs in GetSparks.org history
     * @return int
     */
    public static function getGlobalInstallCount()
    {
        $CI = &get_instance();
        $CI->load->model('spark');
        return Spark::getGlobalInstallCount() + config_item('install_count_base');
    }

    /**
     * Redirect the current user to the login page. After they login or register,
     *  they'll be sent back to $back_to
     * @param string $back_to The URL to come bak to after login. Default $back_to
     *  is the current URL
     * @param string $message A message to show on the login page like "Login first, sucka"
     */
    public static function redirectAndComeback($back_to = FALSE, $message = FALSE)
    {
        $CI = &get_instance();
        # Come back to a diferent page?
        if(!$back_to)
            $back_to = current_url();
        
        $CI->session->set_userdata('back_to', $back_to);

        # Set a message
        if($message)
            UserHelper::setNotice($message);
            
        redirect(base_url() . 'login');
    }

    /**
     * Call this immediately after login or registration to send the user wherever
     *  they came from first (if directed by the redirectAndComeback function)
     */
    public static function handleRedirectIfNeeded()
    {
        $CI = &get_instance();
        $back_to = $CI->session->userdata('back_to');
        if($back_to) redirect ($back_to);
    }

    /**
     * Hash an email (lowercase, trim, md5).
     * @param string $email The email to hash
     * @return string The 32-character hash
     */
    public static function hashEmail($email)
    {
        return md5(strtolower(trim($email)));
    }

    /**
     * Cache the page if we're in a production environment
     * @param int $ttl Minutes to cache the page for
     */
    public static function tryPageCache($ttl = 5)
    {
        if(config_item('is_production'))
        {
            $CI = &get_instance();
            $CI->output->cache($ttl);
        }
    }

    /**
     * Load the disqus comment thread JS
     */
    public static function loadDisqus()
    {
        $data = array (
            'permalink'  => current_url(),
            'identifier' => uri_string(),
            'shortname'  => config_item('service_handle')
        );

        $CI = &get_instance();
        $CI->load->view('global/_disqus', $data);
    }

    /**
     * Is the user using some sort of *nix variant? (OSX, Linux, etc)
     * @return bool True if yes, false if no
     */
    public static function isWindows()
    {
        $CI = &get_instance();
        $CI->load->library('user_agent');
        $platform = $CI->agent->platform();
        return strstr($platform, 'Windows');
    }
    
    /**
     * Taken lovingly from StackOverflow. 
     * @link http://stackoverflow.com/questions/1334613/how-to-recursively-zip-a-directory-in-php
     * @param string $source Source path
     * @param string $destination The target destination
     * @return boolean Success status
     */
    function zip($source, $destination)
    {
        if (!extension_loaded('zip') || !file_exists($source)) {
            return false;
        }

        $zip = new ZipArchive();
        if (!$zip->open($destination, ZIPARCHIVE::CREATE)) {
            return false;
        }

        $source = str_replace('\\', '/', realpath($source));

        if (is_dir($source) === true)
        {
            $files = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($source), RecursiveIteratorIterator::SELF_FIRST);

            foreach ($files as $file)
            {
                $file = str_replace('\\', '/', realpath($file));

                if (is_dir($file) === true)
                {
                    $zip->addEmptyDir(str_replace($source . '/', '', $file . '/'));
                }
                else if (is_file($file) === true)
                {
                    $zip->addFromString(str_replace($source . '/', '', $file), file_get_contents($file));
                }
            }
        }
        else if (is_file($source) === true)
        {
            $zip->addFromString(basename($source), file_get_contents($source));
        }

        return $zip->close();
    }
}