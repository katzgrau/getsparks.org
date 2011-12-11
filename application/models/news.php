<?php
/**
 * The file contains a model for dealing with news links
 */

/**
 * This model represents a news link
 */
class News extends CI_Model {

    /**
     * Get recent news links
     * @param int $n Number of news links to retrieve
     * @return array[News]
     */
    public static function getRecent($n = 5) {
        $CI = get_instance();
        $CI->db->from('news');
        $CI->db->order_by('posted DESC');
        $CI->db->limit(5);
        return $CI->db->get()->result('News');
    }
}