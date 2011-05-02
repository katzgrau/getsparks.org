<?php
/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Maintenance
{
    function check()
    {
        if(config_item('is_maintanence'))
        {
            $CI = &get_instance();
            $is_admin = in_array(UserHelper::getUsername(), config_item('admin_users'));
            
            if(!$is_admin && !($CI->uri->segment(1) == 'login'))
            {
                die('Hang on a bit while we upgrade the site :)');
            }
        }
    }
}