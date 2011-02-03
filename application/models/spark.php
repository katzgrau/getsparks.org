<?php

class Spark extends CI_Model
{
    /**
     * Get a spark object by its name and version
     * @param string $name
     * @param string $version
     * @return Spark
     */
    public static function get($name, $version)
    {
        if($version == 'HEAD')
            return self::getLatest ($name);
        
        $CI = &get_instance();
        $CI->db->select("s.*, v.version");
        $CI->db->from('sparks s');
        $CI->db->join('versions v', 'v.spark_id = s.id');
        $CI->db->where('s.name', $name);
        $CI->db->where('v.version', $version);

        return $CI->db->get()->row(0, 'Spark');
    }

    /**
     * Get the latest version
     * @param string $name
     * @return Spark
     */
    public static function getLatest($name)
    {
        $CI = &get_instance();
        $CI->db->select("s.*, v.version");
        $CI->db->from('sparks s');
        $CI->db->join('versions v', 'v.spark_id = s.id');
        $CI->db->where('s.name', $name);
        $CI->db->order_by('v.created', 'DESC');
        $CI->db->limit(1);

        return $CI->db->get()->row(0, 'Spark');
    }

    /**
     * The the contributor object for a spark
     * @return Contributor
     */
    public function getContributor()
    {
        return $this->db->get_where('contributors', array('id' => $this->contributor_id))->row(0, 'Contributor');
    }
}