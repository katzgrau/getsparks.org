<?php
/**
 * A file that contains a model for dealing with downloads
 */

/**
 * A model for tracking download activity on the site
 */
class Download extends CI_Model
{
    /**
     * Record a download in the downloads table
     * @param string $type The type of download
     * @return bool True on success, false on failure
     */
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