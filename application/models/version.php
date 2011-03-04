<?php
/**
 * This file contains a model for represention versions of sparks
 */

/**
 * This model represents a version of a spark
 */
class Version extends CI_Model
{
    /**
     * Add a new version of a spark
     * @param array $data An assoc. array of spark data
     * @return bool True/false depending on whether it worked
     */
    public static function insert($data)
    {
        $CI = &get_instance();
        $data['modified'] = date('Y-m-d H:i:s');
        $data['created']  = date('Y-m-d H:i:s');
        return $CI->db->insert('versions', $data);
    }
}