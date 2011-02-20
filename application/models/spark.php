<?php

class Spark extends CI_Model
{
    public static function insert($data)
    {
        $CI = &get_instance();
        $data['modified'] = date('Y-m-d H:i:s');
        $data['created']  = date('Y-m-d H:i:s');
        return $CI->db->insert('sparks', $data);
    }

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
        $CI->db->select("s.*, v.version, v.is_deactivated, v.archive_url, v.readme");
        $CI->db->from('sparks s');
        $CI->db->join('versions v', 'v.spark_id = s.id');
        $CI->db->where('s.name', $name);
        $CI->db->where('v.version', $version);
        $CI->db->where('v.is_verified', TRUE);
        $CI->db->where('v.is_deactivated', FALSE);

        return $CI->db->get()->row(0, 'Spark');
    }

    public static function getGlobalInstallCount()
    {
        $CI = &get_instance();
        return $CI->db->count_all('installs');
    }

    /**
     * Get spark info by its name and version
     * @param string $name
     * @param string $version
     * @return Spark
     */
    public static function getInfo($name)
    {       
        $CI = &get_instance();
        $CI->db->select("s.*");
        $CI->db->from('sparks s');
        $CI->db->where('s.name', $name);

        return $CI->db->get()->row(0, 'Spark');
    }

    /**
     * Get a spark by its id
     * @param int $id
     * @return Spark
     */
    public static function getById($id)
    {
        $CI = &get_instance();
        $CI->db->select("s.*");
        $CI->db->from('sparks s');
        $CI->db->where('s.id', $id);

        return $CI->db->get()->row(0, 'Spark');
    }

    /**
     * Get the latest version
     * @param string $name
     * @return Spark
     */
    public static function getLatest($name, $verified = TRUE)
    {
        $CI = &get_instance();
        $CI->db->select("s.*, v.version, v.is_deactivated, v.archive_url, v.readme");
        $CI->db->from('sparks s');
        $CI->db->join('versions v', 'v.spark_id = s.id');
        $CI->db->where('s.name', $name);
        $CI->db->where('v.is_deactivated', FALSE);

        if($verified)
            $CI->db->where('v.is_verified', TRUE);

        $CI->db->order_by('v.created', 'DESC');
        $CI->db->limit(1);

        return $CI->db->get()->row(0, 'Spark');
    }

    /**
     * Get the latest version
     * @param string $name
     * @return Spark
     */
    public static function getUnverified()
    {
        $CI = &get_instance();
        $CI->db->select("s.*, v.version, v.is_deactivated, v.is_verified");
        $CI->db->from('sparks s');
        $CI->db->join('versions v', 'v.spark_id = s.id');
        $CI->db->where('v.is_verified', 0);
        $CI->db->where('v.is_deactivated', FALSE);
        $CI->db->order_by('v.created', 'DESC');

        return $CI->db->get()->result('Spark');
    }

    /**
     * Get the top sparks.. however that's done
     * @param int $n
     * @return array[Spark]
     */
    public static function getTop($n = 10)
    {
        $CI = &get_instance();

        $CI->db->select("s.*, c.username");
        $CI->db->from('sparks s');
        $CI->db->join('contributors c', 's.contributor_id = c.id');
        $CI->db->order_by('s.created', 'DESC');

        $CI->db->limit($n);

        return $CI->db->get()->result('Spark');
    }

    /**
     * Get the top sparks.. however that's done
     * @param int $n
     * @return array[Spark]
     */
    public static function getLatestOf($n = 10, $is_featured = NULL, $is_official = NULL)
    {
        $CI = &get_instance();
        $CI->db->select("s.*, c.username, c.email");
        $CI->db->from('sparks s');
        $CI->db->join('contributors c', 's.contributor_id = c.id');
        
        if($is_featured !== NULL)
            $CI->db->where('s.is_featured', (bool)$is_featured);

        if($is_official !== NULL)
            $CI->db->where('s.is_official', (bool)$is_official);

        $CI->db->order_by('s.created', 'DESC');

        if($n !== FALSE) $CI->db->limit($n);

        return $CI->db->get()->result('Spark');
    }

    /**
     * The the contributor object for a spark
     * @return Contributor
     */
    public function getContributor()
    {
        $this->load->model('contributor');
        return $this->db->get_where('contributors', array('id' => $this->contributor_id))->row(0, 'Contributor');
    }

    public function setVerified($version, $is_verified = TRUE, $archive_url = '')
    {
        $CI = &get_instance();
        $CI->db->where('spark_id', $this->id);
        $CI->db->where('version', $version);
        $CI->db->update('versions', array('is_verified' => $is_verified, 'archive_url' => $archive_url));
    }

    public function setVersionReadme($version, $readme)
    {
        $CI = &get_instance();
        $CI->load->spark('markdown/1.1');
        $CI->db->where('spark_id', $this->id);
        $CI->db->where('version', $version);
        $CI->db->update('versions', array('readme'      => $readme,
                                          'readme_html' => parse_markdown($readme)));
    }

    /**
     * Get this spark's version list
     * @return array[Version]
     */
    public function getVersions($is_verified = NULL)
    {
        $this->load->model('version');
        $this->db->order_by('created', 'DESC');

        if($is_verified === TRUE)
            $this->db->where('is_verified', TRUE);
        elseif($is_verified === FALSE)
            $this->db->where('is_verified', FALSE);

        $this->db->where('is_deactivated', FALSE);

        return $this->db->get_where('versions', array('spark_id' => $this->id))->result('Version');
    }

    public function recordInstall()
    {
        return $this->db->insert('installs', array('spark_id' => $this->id, 'created' => date('Y-m-d H:i:s')));
    }

    public function setVersionStatus($version, $deactivated = FALSE)
    {
        $this->db->where('spark_id', $this->id);
        $this->db->where('version', $version);

        $this->db->update('versions', array('is_deactivated' => $deactivated));
    }

    public function removeVersionAndNotify($version, $errors)
    {
        $this->load->helper('email');
        $contrib   = $this->getContributor();
        $sys_email = config_item('system_alert_email');

        $message = "Hey there,
This is an automated message to tell you that version '$version' of
$this->name couldn't be verified ($this->base_location).
We've removed that version from our system at getsparks. Once you get
things figured out on your end, you can re-add the version :).
Here are some specifics: \n\n";

        foreach($errors as $error)
            $message .= "$error\n";

        send_email("{$contrib->email},{$sys_email}", "{$this->name} v{$version} Removed.", $message);
        
        $this->db->where('spark_id', $this->id);
        $this->db->where('version', $version);
        return $this->db->delete('versions');
    }

    public static function save($data)
    {
        $this->db->where('id', $this->id);
        return $this->db->update('sparks', $data);
    }

    public static function update($id, $data)
    {
        $CI = &get_instance();
        $CI->db->where('id', $id);
        return $CI->db->update('sparks', $data);
    }

    public static function doesExist($package_name)
    {
        $CI = &get_instance();
        $sql = "SELECT EXISTS (SELECT id FROM sparks WHERE name = ?) AS 'exists'";
        return $CI->db->query($sql, array($package_name))->row()->exists;
    }

    /**
     * Search for a package by string name
     * @param string $term
     * @return array
     */
    public static function search($term)
    {
        $CI = &get_instance();
        $CI->db->select('s.*');
        $CI->db->from('sparks s');
        $CI->db->like('name', $term, 'both');

        return $CI->db->get()->result();
    }
}