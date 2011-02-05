<?php

class Contributor extends CI_Model
{
    /**
     *
     * @param <type> $data
     * @return bool
     */
    public static function insert($data)
    {
        $CI = &get_instance();
        $data['password'] = sha1($data['password']);
        $data['modified'] = date('Y-m-d H:i:s');
        $data['created']  = date('Y-m-d H:i:s');
        return $CI->db->insert('contributors', $data);
    }

    /**
     * Get a contributor by his username
     * @param string $username
     * @return Contributor
     */
    public static function findByUsername($username)
    {
        $CI = &get_instance();
        return $CI->db->get_where('contributors', array('username' => $username))->row(0, 'Contributor');
    }

    /**
     *
     * @param string $username
     * @param string $password
     * $param Contributor If the record is found, a contributor
     */
    public static function getByLogin($email, $password)
    {
        $CI = &get_instance();
        return $CI->db->get_where('contributors', array('email' => $email, 'password' => sha1($password)))->row(0, 'Contributor');
    }

    /**
     * Get contributor's sparks
     * @return array[Spark]
     */
    public function getContributions()
    {
        $CI = &get_instance();
        $CI->load->model('spark');
        return $CI->db->get_where('sparks', array('contributor_id' => $this->id))->result('Spark');
    }


}