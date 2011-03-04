<?php
/**
 * This file contains a helper class for getting and setting information
 *  about the logged-in user
 */

/**
 * This is a helper class for getting and setting information about the logged-in
 *  user.
 */
class UserHelper
{
    /**
     * Check if the current user is logged in
     * @return bool True if yes, false if no
     */
    public static function isLoggedIn()
    {
        # In the future, check EllisLab
        $CI = &get_instance();
        return $CI->session->userdata('logged_in');
    }

    /**
     * Set the current user as 'logged in' and optionally save
     *  some information about them
     * @param array $userdata An associative array of information about the user
     */
    public static function setLoggedIn($userdata = array())
    {
        $CI = &get_instance();
        $CI->session->set_userdata('contributor', (array)$userdata);
        $CI->session->set_userdata('logged_in', TRUE);
    }

    /**
     * Get the logged-in user's gravatar
     * @param int $size The size of avatar to grab, default is 80px
     * @return string The URL of the avatar
     */
    public static function getAvatarURL($size = 80)
    {
        $CI = &get_instance();
        $CI->load->spark('gravatar-helper/1.1');
        $CI->load->helper('gravatar');
        return Gravatar_helper::from_email(self::getEmail(), NULL, $size, NULL);
    }

    /**
     * Get the logged in user's username
     * @return string The username
     */
    public static function getUsername()
    {
        $CI = &get_instance();
        $contributor = $CI->session->userdata('contributor');
        return (bool)$contributor ? $contributor['username']: FALSE;
    }

    /**
     * Get the logged-in user's real name
     * @return string The name
     */
    public static function getRealName()
    {
        $CI = &get_instance();
        $contributor = $CI->session->userdata('contributor');
        return (bool)$contributor ? $contributor['real_name']: FALSE;
    }

    /**
     * Get the logged-in user's user_id
     * @return int The id
     */
    public static function getId()
    {
        $CI = &get_instance();
        $contributor = $CI->session->userdata('contributor');
        return (bool)$contributor ? $contributor['id']: FALSE;
    }

    /**
     * Get the logged-in user's email
     * @return string The email
     */
    public static function getEmail()
    {
        $CI = &get_instance();
        $contributor = $CI->session->userdata('contributor');
        return (bool)$contributor ? $contributor['email']: FALSE;
    }

    /**
     * Destroy the logged-in user's session, which logs them out
     */
    public static function logout()
    {
        $CI = &get_instance();
        $CI->session->sess_destroy();
    }

    /**
     * Set a notice to be displayed to the user on the next page view
     * @param string $message The message to display
     * @param bool $is_good True if it's positive, false if it's a warning
     *  Warnings are usually red-ish
     */
    public static function setNotice($message, $is_good = TRUE)
    {
        $CI = &get_instance();
        $notices = $CI->session->userdata('notices');

        if(!is_array($notices)) $notices = array();

        $notices[] = array($message, $is_good);

        $CI->session->set_userdata('notices', $notices);
    }

    /**
     * Get all of a user's notices, and wipe any record of notices after that.
     * @return array[string] Array of messages/notices
     */
    public static function getNotices()
    {
        $CI = &get_instance();
        $notices = $CI->session->userdata('notices');

        if(!is_array($notices)) $notices = array();
        $CI->session->set_userdata('notices', array());
        
        return $notices;
    }
}