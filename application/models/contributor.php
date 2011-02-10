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
     * Get a contributor by his id
     * @param int $user_id
     * @return Contributor
     */
    public static function findById($user_id)
    {
        $CI = &get_instance();
        return $CI->db->get_where('contributors', array('id' => $user_id))->row(0, 'Contributor');
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

    /**
     *
     * @param int $id
     * @param array $data
     * @return bool
     */
    public static function update($id, $data)
    {
        $CI = &get_instance();
        # Do some password handling
        if(array_key_exists('password', $data))
        {
            if(empty($data['password']))
            {
                unset($data['password']);
            }
            else
            {
                $data['password'] = sha1($data['password']);
            }
        }

        $CI->db->where('id', $id);
        return $CI->db->update('contributors', $data);
    }
}