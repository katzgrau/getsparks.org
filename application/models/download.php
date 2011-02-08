<?php

class Download extends CI_Model
{
    public static function recordDownload($type = 'unknown')
    {
        $CI = &get_instance();
        $data = array (
            'user_agent' => $CI->input->user_agent(),
            'ip'         => $CI->input->ip_address(),
            'created'    => date('Y-m-d H:i:s'),
            'type'       => $type
        );

        return $CI->db->insert('downloads', $data);
    }
}