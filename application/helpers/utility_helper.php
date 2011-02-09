<?php

class UtilityHelper
{
    public static function getGlobalInstallCount()
    {
        $CI = &get_instance();
        $CI->load->model('spark');
        return Spark::getGlobalInstallCount() + config_item('install_count_base');
    }

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

    public static function handleRedirectIfNeeded()
    {
        $CI = &get_instance();
        $back_to = $CI->session->userdata('back_to');
        if($back_to) redirect ($back_to);

        return;
    }
}