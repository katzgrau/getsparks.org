<?php

class UtilityHelper
{
    public static function getGlobalInstallCount()
    {
        $CI = &get_instance();
        $CI->load->model('spark');
        return Spark::getGlobalInstallCount();
    }
}