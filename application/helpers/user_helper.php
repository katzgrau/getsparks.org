<?php

class UserHelper
{
    public static function isLoggedIn()
    {
        # In the future, check EllisLab
        $CI = &get_instance();
        return $CI->session->userdata('logged_in');
    }

    public static function setLoggedIn($userdata)
    {
        $CI = &get_instance();
        $CI->session->set_userdata('contributor', (array)$userdata);
        $CI->session->set_userdata('logged_in', TRUE);
    }

    public static function getAvatarURL($size = 80)
    {
        $CI = &get_instance();
        $CI->load->helper('gravatar');
        return GravatarHelper::from_email(self::getEmail(), NULL, $size, NULL);
    }

    public static function getUsername()
    {
        $CI = &get_instance();
        $contributor = $CI->session->userdata('contributor');
        return (bool)$contributor ? $contributor['username']: FALSE;
    }

    public static function getRealName()
    {
        $CI = &get_instance();
        $contributor = $CI->session->userdata('contributor');
        return (bool)$contributor ? $contributor['real_name']: FALSE;
    }

    public static function getId()
    {
        $CI = &get_instance();
        $contributor = $CI->session->userdata('contributor');
        return (bool)$contributor ? $contributor['id']: FALSE;
    }

    public static function getEmail()
    {
        $CI = &get_instance();
        $contributor = $CI->session->userdata('contributor');
        return (bool)$contributor ? $contributor['email']: FALSE;
    }

    public static function logout()
    {
        $CI = &get_instance();
        $CI->session->sess_destroy();
    }

    public static function setNotice($message, $is_good = TRUE)
    {
        $CI = &get_instance();
        $notices = $CI->session->userdata('notices');

        if(!is_array($notices)) $notices = array();

        $notices[] = array($message, $is_good);

        $CI->session->set_userdata('notices', $notices);
    }

    public static function getNotices()
    {
        $CI = &get_instance();
        $notices = $CI->session->userdata('notices');

        if(!is_array($notices)) $notices = array();
        $CI->session->set_userdata('notices', array());
        
        return $notices;
    }
}