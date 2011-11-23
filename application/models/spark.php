<?php
/**
 * This file contains a model for handling sparks
 */

/**
 * A model for representing sparks
 */
class Spark extends CI_Model
{
    /**
     * Insert a spark into the database
     * @param array $data The data to insert
     * @return bool True if it worked, false if not
     */
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
        $CI->db->select("s.*, v.version, v.is_deactivated, v.archive_url, v.readme, v.tag, v.id AS 'version_id'");
        $CI->db->from('sparks s');
        $CI->db->join('versions v', 'v.spark_id = s.id');
        $CI->db->where('s.name', $name);
        $CI->db->where('v.version', $version);
        $CI->db->where('v.is_verified', TRUE);
        $CI->db->where('v.is_deactivated', FALSE);

        return $CI->db->get()->row(0, 'Spark');
    }
    
    /**
     * Get an index array of sparks. 
     * @return Array     
     */
		public static function get_index_list()
		{
			$data = array();
			$CI = &get_instance();
			$CI->db->select("id, name");
			$CI->db->order_by('name');
			$rows = $CI->db->from('sparks')->get()->result_array();
			
			foreach($rows AS $key => $row)
			{
				$data[$row['id']] = $row['name'];
			}
			
			return $data;
		}

    /**
     * Get the total number of downloads on the site
     * @return int
     */
    public static function getGlobalInstallCount()
    {
        $CI = &get_instance();
        return $CI->db->count_all('installs');
    }

    /**
     * Get the total number of installs this spark has had
     * @return int The number of installs
     */
    public function getInstallCount()
    {
        $this->db->where('spark_id', $this->id);
        return $this->db->count_all_results('installs');
    }

    /**
     * Get spark info by its name
     * @param string $name
     * @param string $version
     * @return Spark
     */
    public static function getInfo($name)
    {       
        $CI = &get_instance();
        $CI->db->select('s.*');
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
        $CI->db->select('s.*');
        $CI->db->from('sparks s');
        $CI->db->where('s.id', $id);

        return $CI->db->get()->row(0, 'Spark');
    }

	/**
	 * Get the stats for a spark
	 * @param int $id
	 * @return array
	 */
	public function getStats()
	{	
		$CI = &get_instance();
        $CI->db->select('COUNT(*) as installs, YEARWEEK(created) AS week');
		$CI->db->from('installs');
		$CI->db->where(array('spark_id' => $this->id, 'YEARWEEK(created) <=' => date('YW')));
		$CI->db->group_by('YEARWEEK(created)', NULL, FALSE);
		$CI->db->limit('24');
		
		$results = $CI->db->get()->result();
		
		// Rewrite results to a nice array
        $data = array();
		foreach ($results as $result)
		{
			$data[$result->week] = $result->installs;	
		}
				
		return $data;
	}


    /**
     * Get the latest version
     * @param string $name
     * @return Spark
     */
    public static function getLatest($name, $verified = TRUE)
    {
        if($name === FALSE)
            $name = $this->name;
        
        $CI = &get_instance();
        $CI->db->select('s.*, v.version, v.is_deactivated, v.archive_url, v.tag, v.readme, v.id AS version_id');
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
        $CI->db->select("s.*, v.version, v.tag, v.is_deactivated, v.is_verified, v.id AS 'version_id'");
        $CI->db->from('sparks s');
        $CI->db->join('versions v', 'v.spark_id = s.id');
        $CI->db->where('v.is_verified', 0);
        $CI->db->where('v.is_deactivated', FALSE);
        $CI->db->order_by('v.created', 'DESC');

        return $CI->db->get()->result('Spark');
    }
    
    /**
     * Get all the forks from the id passed in.
     * @param int $id
     * @return Spark
     */
    public static function getForks($id)
    {
        $CI = &get_instance();
        $CI->db->select("s.*, v.version, v.tag, v.is_deactivated, v.is_verified, v.id AS 'version_id'");
        $CI->db->from('sparks s');
        $CI->db->join('versions v', 'v.spark_id = s.id');
        $CI->db->where('v.is_verified', 0);
        $CI->db->where('v.is_deactivated', FALSE);
        $CI->db->where('s.fork_id', $id);
        $CI->db->order_by('s.name');

        return $CI->db->get()->result('Spark');
    }

    /**
     * Get sparks 
     * @param int $n
     * @return array[Spark]
     */
    public static function getTop($n = 10, $require_release = TRUE, $browse = TRUE)
    {
        $CI = &get_instance();

        $CI->db->select("s.*, c.username, c.email");
        $CI->db->from('sparks s');
        $CI->db->join('contributors c', 's.contributor_id = c.id');

        if($require_release)
        {
            $CI->db->join('versions v', 'v.spark_id = s.id');
            $CI->db->group_by('s.id');
        }

				if($browse)
					$CI->db->where('s.is_browse', 1);

        $CI->db->order_by('s.created', 'DESC');

        $CI->db->limit($n);

        return $CI->db->get()->result('Spark');
    }

    /**
     * Get the top sparks.. however that's done
     * @param int $n
     * @return array[Spark]
     */
    public static function getLatestOf($n = 10, $is_featured = NULL, $is_official = NULL, $browse = TRUE)
    {
        $CI = &get_instance();
        $CI->db->select("s.*, c.username, c.email, s.created");
        $CI->db->from('sparks s');
        $CI->db->join('contributors c', 's.contributor_id = c.id');
        
        if($is_featured !== NULL)
            $CI->db->where('s.is_featured', (bool)$is_featured);

        if($is_official !== NULL)
            $CI->db->where('s.is_official', (bool)$is_official);

        $CI->db->order_by('s.created', 'DESC');

        if($n !== FALSE) $CI->db->limit($n);

				if($browse)
					$CI->db->where('s.is_browse', 1);

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

    /**
     * Get an array of a spark's dependencies
     */
    public function getDependencies($extended = TRUE)
    {
        $this->db->select("s.*, v.version, v.tag, v.is_deactivated, v.id AS 'version_id', d.is_direct");
        $this->db->from('dependencies d');
        $this->db->join('versions v', 'v.id = d.needed_version_id');
        $this->db->join('sparks s', 's.id = v.spark_id');
        $this->db->where('version_id', $this->version_id);

        if(!$extended)
            $this->db->where('is_direct', TRUE);

        return $this->db->get()->result();
    }

    /**
     * Set a version of this spark as 'verified', which means it checked out fine, and looks legit
     * @param string $version The version to set 'verified'
     * @param string $is_verified True for verified, false for not
     * @param string $archive_url The URL to download the spark at
     */
    public function setVerified($version, $is_verified = TRUE, $archive_url = '')
    {
        $CI = &get_instance();
        $CI->db->where('spark_id', $this->id);
        $CI->db->where('version', $version);
        $CI->db->update('versions', array('is_verified' => $is_verified, 'archive_url' => $archive_url));
    }

    /**
     * Set the README text for a version of this spark
     * @param string $version The version to set the readme for
     * @param string $readme The readme MARKDOWN
     */
    public function setVersionReadme($version, $readme)
    {
        $CI = &get_instance();
        $CI->load->spark('markdown/1.1');
        $CI->db->where('spark_id', $this->id);
        $CI->db->where('version', $version);
        $CI->db->update('versions', array('readme'      => $readme,
                                          'readme_html' => parse_markdown($readme)));
    }

    public function setVersion($version)
    {
        $CI = &get_instance();
        $CI->db->where('spark_id', $this->id);
        $CI->db->where('tag', $this->tag);
        $this->version = $version;
        $CI->db->update('versions', array('version' => $version));
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

    /**
     * Record an install of this spark. Do not count 'example-spark', which
     *  is used for tutorial and unit-testing purposes.
     * @return bool True if it worked, false if not
     */
    public function recordInstall()
    {
        if($this->name != 'example-spark')
        {
            $this->db->insert('installs', array('spark_id' => $this->id, 'created' => date('Y-m-d H:i:s')));
            return true;
        }
        else
        {
            return false;
        }
    }

    /**
     * Activate or deactivate a version of a spark
     * @param string $version The version to activate or deactivate
     * @param bool $deactivated True if deactivated, false if not
     */
    public function setVersionStatus($version, $deactivated = FALSE)
    {
        $this->db->where('spark_id', $this->id);
        $this->db->where('version', $version);

        $this->db->update('versions', array('is_deactivated' => $deactivated));
    }

    /**
     * Remove a spark from the database, and tell it's dreadful author why
     *  we're removing it via email.
     * @param string $version The version to remove
     * @param array $errors The things wrong with the spark
     * @return bool
     */
    public function removeTagAndNotify($tag, $errors)
    {
        $this->load->helper('email');
        $contrib   = $this->getContributor();
        $sys_email = config_item('system_alert_email');

        $message = "Hey there,
This is an automated message to tell you that tag '$tag' of
$this->name couldn't be verified ($this->base_location).
We've removed that version from our system at getsparks. Once you get
things figured out on your end, you can re-add the version :).
Here are some specifics: \n\n";

        foreach($errors as $error)
            $message .= "$error\n";

        send_email("{$contrib->email},{$sys_email}", "{$this->name} {$tag} Removed.", $message);
        
        $this->db->where('spark_id', $this->id);
        $this->db->where('tag', $tag);
				return $this->db->delete('versions');
    }

    /**
     * Update this spark with an assoc. array of data
     * @param array $data Fields/values to update
     * @return bool True if it worked, false if not
     */
    public static function save($data)
    {
        $this->db->where('id', $this->id);
        return $this->db->update('sparks', $data);
    }

    /**
     * Update a spark with an assoc. array of fields to update
     * @param int $id The id of the spark to update
     * @param array $data The data
     * @return bool True/false if it worked
     */
    public static function update($id, $data)
    {
        $CI = &get_instance();
        $CI->db->where('id', $id);
        return $CI->db->update('sparks', $data);
    }

    /**
     * Check whether a given package name exists
     * @param string $package_name The package name in questions
     * @return bool
     */
    public static function doesExist($package_name)
    {
        $CI = &get_instance();
        $sql = "SELECT EXISTS (SELECT id FROM sparks WHERE name = ?) AS 'exists'";
        return $CI->db->query($sql, array($package_name))->row()->exists;
    }

    /**
     * Search for a package by string name
     * @param string $term
     * @return array An array of Spark objects
     */
    public static function search($term)
    {
        $CI = &get_instance();
        $CI->db->select("s.*, c.username, c.email");
        $CI->db->from('sparks s');
        $CI->db->join('contributors c', 's.contributor_id = c.id');
        $CI->db->like('name', $term, 'both');
        $CI->db->or_like('summary', $term, 'both');
        $CI->db->or_like('description', $term, 'both');

        return $CI->db->get()->result('Spark');
    }

    /**
     * Do any preliminary checking to make sure things look
     *  okay before we start processing dependencies and
     *  anything like that.
     * @param Spark_spec $spec
     */
    public function runPreSubmissionChecks($spec)
    {
        $latest = $this->getLatest($this->name);

        if($latest && $latest->version == $spec->version)
        {
            throw new Exception("The version number set in spark.info ({$spec->version}) matches the version number from your last submission. Not only does the tag need to change, the version number does too :)");
        }
    }

    /**
     * Add dependencies for the current spark current spark.
     * If you have a new unverified version of a spark, and you want to add it's
     *  dependencies, pass the spec in here.
     * @param Spark_spec $spec
     */
    public function processDependencies($spec)
    {
        # Make sure we're working with something usable
        $spec->validate();

        # These will hold version ids
        $direct_dependencies   = array();
        $indirect_dependencies = array();
        
        # Will hold the rows to be insterted into the db
        $dependency_rows      = array();

        if(count($spec->dependencies))
        {
            # Make sure all the dependencies exist
            #  If they do, keep track of the version_id in the direct dependants
            foreach($spec->dependencies as $name => $version)
            {
                if(!($spark = self::get($name, $version)))
                    throw new SpecValidationException("The dependency '$name' version $version does not exist");

                $direct_dependencies[] = $spark->version_id;
            }

            # Get the dependencies of the dependencies, and add them to our own
            $this->db->select('needed_version_id');
            $this->db->where_in('version_id', $direct_dependencies);
            $rows = $this->db->get('dependencies')->result();

            # Anything that comes back is an indirect dependency, so let's
            #  keep it separate
            foreach($rows as $second_degree_dependency)
            {
                $version_id = $second_degree_dependency->needed_version_id;
                if(!in_array($version_id, $direct_dependencies))
                        $indirect_dependencies[] = $version_id;
            }

            # Add the direct dependency rows
            foreach($direct_dependencies as $dependency)
            {
                $dependency_rows[] = array (
                    'version_id'        => $this->version_id,
                    'needed_version_id' => $dependency,
                    'is_direct'         => TRUE
                );
            }

            # Add the indrect dependency rows
            foreach($indirect_dependencies as $dependency)
            {
                $dependency_rows[] = array (
                    'version_id'        => $this->version_id,
                    'needed_version_id' => $dependency,
                    'is_direct'         => FALSE
                );
            }

            # Insert the dependency information
            return $this->db->insert_batch('dependencies', $dependency_rows);
        }

        return TRUE;
    }
}
