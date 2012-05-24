<?php
/**
 * Contains the Packages controller
 */

/**
 * A controller for handling calls regarding packages
 */
class Packages extends CI_Controller
{
    /**
     * Get the JSON spec for a package
     * @param string $package_name The name of the package to get the spec for
     * @param string $version The version string of the specific version to grab.
     *  Can be HEAD
     * @param string $format The format to get the spec in
     */
    public function spec($package_name, $version, $format)
    {
        #UtilityHelper::tryPageCache(1);

        $this->load->model('spark');
        $this->load->model('contributor');
        $this->load->model('download');

        $spark = Spark::get($package_name, $version);

        if(!$spark) show_404 ();

        $spark->spark_home  = base_url() . 'packages/' . $spark->name . '/show';
        $spark->contributor = $spark->getContributor();

        # Omit the password hash
        unset($spark->contributor->password);

        # Do this?
        $spark->recordInstall();
        Download::recordDownload('spec');

        $this->output->set_output(json_encode($spark));
    }

    /**
     * The call for allowing a user to contribute a spark
     */
    public function add()
    {
        $data = array();
        if(!UserHelper::isLoggedIn())
            UtilityHelper::redirectAndComeback(FALSE, "Before you contribute, log in :)");

        $this->load->library('form_validation');
        $this->load->helper('form_helper');
		$this->load->model('spark');

        if ($_POST)
        {
            if($this->form_validation->run('add-package'))
            {
                $post = $_POST;
                $post['contributor_id'] = UserHelper::getId();

                $insert = elements(array('contributor_id', 'name', 'summary', 'description', 'website', 'repository_type', 'base_location', 'fork_id', 'is_browse'), $post);

                $this->load->model('Spark');

                if(Spark::insert($insert))
                {
                    UserHelper::setNotice("Woot, the spark's been added! Thanks for making CodeIgniter awesome!");
                    redirect(base_url() . 'packages/' . $insert['name'] . '/show');
                }
                else
                {
                    UserHelper::setNotice("Whoops, erra.", FALSE);
                }
            }
            else
            {
                UserHelper::setNotice("Whoops, there were some problems with your submission. Check below.", FALSE);
            }
        }


				$data['sparkslist'] = Spark::get_index_list();
        $this->load->view('packages/add', $data);
    }

    /**
     * The call for editing a package
     * @param string $package_name The name of the package to edit
     * @todo Permission validation is in place, but check that the user has permission to
     *  edit in the first place
     */
    public function edit($package_name)
    {
        $this->load->model('spark');
        $this->load->model('contributor');
        $this->load->library('form_validation');
        $this->load->helper('form_helper');

        $submit   = $this->input->post('submit');
        $spark_id = $this->input->post('spark_id');
        $success  = FALSE;

        if($submit)
        {
            if($this->form_validation->run('edit-package'))
            {
                $update = elements(array('name', 'summary', 'description', 'website', 'repository_type', 'base_location', 'fork_id', 'is_browse'), $_POST);
                Spark::update($spark_id, $update);
                UserHelper::setNotice("This spark has been updated. Thanks again, you're awesome.");
                $success = TRUE;
            }
            else
            {
                UserHelper::setNotice("Whoops, there were some errors...", FALSE);
            }
        }

        if($success)
            $spark = Spark::getInfo($update['name']);
        else
            $spark = Spark::getInfo($package_name);
        
        if(!$spark) show_404();
				
				$data = array();
				$data['sparkslist'] = Spark::get_index_list();
        $data['contribution'] = $spark;
        $this->load->view('packages/edit', $data);
    }

    /**
     * Show the public information page for a spark
     * @param string $package_name The package being viewed
     */
    public function show($package_name)
    {
        #UtilityHelper::tryPageCache();
        
        $this->load->model('spark');
        $this->load->model('rating');
        $this->load->model('contributor');

        $spark = Spark::getInfo($package_name);

        if ( ! $spark) 
			show_404();

        $contributor = $spark->getContributor();
        
        if($spark->fork_id > 0)
        {
					$forks = Spark::getForks($spark->fork_id);
					array_unshift($forks, Spark::getById($spark->fork_id));       
        } else
        {
					$forks = Spark::getForks($spark->id);
				}
				
		// Get the stats for this Spark
		$data['stats'] = $spark->getStats($spark->id);
		$this->load->helper('google_chart');
	
        $data['contribution'] = $spark;
        $data['contributor']  = $contributor;
        $data['versions']     = $spark->getVersions(TRUE);
        $data['versions_unverified'] = $spark->getVersions(FALSE);
        $data['is_author']    = ($contributor->id == UserHelper::getId());
        $data['current_user_rating'] = FALSE;
        $data['ratings']      = $this->rating->getRatings($spark->id);
        $data['forks']				= $forks;
        
        if(UserHelper::isLoggedIn())
        {
            $data['current_user_rating'] = $this->rating->getUserRating(UserHelper::getId(), $spark->id);
        }

        $this->load->view('packages/show', $data);
    }

    /**
     * Call to enable a spark
     * @param string $package_name The name of the package to enable
     * @param string $version The version to enable
     */
    public function enable($package_name, $version)
    {
        $this->_setEnabled($package_name, $version, TRUE);
    }

    /**
     * Call to disable a spark
     * @param string $package_name The name of the package to disable
     * @param string $version The version to disable
     */
    public function disable($package_name, $version)
    {
        $this->_setEnabled($package_name, $version, FALSE);
    }

    /**
     * An internal utility call to enable or disable a spark and redirect to
     *  the spark page with a notice
     * @param string $package_name The spark to enable or disable
     * @param string $version The version to update
     * @param bool $enabled True to enable, false to disable
     */
    private function _setEnabled($package_name, $version, $enabled = true)
    {
        $this->load->model('spark');
        $spark = Spark::getInfo($package_name);

        if(!$spark) show_404 ();

        $spark->setVersionStatus($version, !$enabled);

        if($enabled)
            UserHelper::setNotice("The $version release has been enabled");
        else
            UserHelper::setNotice("The $version release has been disabled");

        redirect(base_url() . 'packages/' . $package_name . '/show');
    }

    /**
     * A CI validation callback to make sure a package name is available
     * @param string $package_name The package name that a user is trying to add
     * @return bool True if OK, false if not
     */
    public function package_available($package_name)
    {
        $this->load->model('spark');

        $spark = Spark::getInfo($package_name);

        if($spark)
        {
            if($spark->contributor_id !== UserHelper::getId())
            {
                $this->form_validation->set_message('package_available', 'Sorry! That Spark name is taken');
                return FALSE;
            }

            if($spark->id != $this->input->post('spark_id'))
            {
                $this->form_validation->set_message('package_available', 'You already have a Spark with that name');
                return FALSE;
            }
        }

        return TRUE;
    }

    /**
     * A CI validation callback to make sure the package being edited is owned by the
     *  logged-in user
     * @param int $spark_id The id of the spark
     * @return bool True if the logged in user is the owner, false if not
     */
    public function is_owner($spark_id)
    {
        $this->load->model('spark');

        if(Spark::getById($spark_id)->contributor_id == UserHelper::getId()) return true;

        $this->form_validation->set_message('is_owner', "Sorry, you don't own that spark. That also means you're an ass.");
        return FALSE;
    }

    function summary()
    {
        UtilityHelper::tryPageCache(1);

        $this->load->model('spark');
        $items_per = 5;

        $data = array();
        $data['latest'] = Spark::getTop($items_per);;
        $data['featured'] = Spark::getLatestOf($items_per, TRUE);;
        $data['official'] = Spark::getLatestOf($items_per, NULL, TRUE);;

        $this->load->view('packages/summary', $data);
    }

    /**
     * The call for showing the package listing page. For type, handles
     *  'latest', 'featured' and 'official'
     * @param string $type
     */
    function browse($type = false)
    {
        UtilityHelper::tryPageCache(1);
        
        $this->load->model('spark');
        $this->load->model('rating');
        
        $sparks = array();
        $data['browse_type'] = '';
        $data['description'] = '';
        $data['browse_type_raw'] = $type;

        if($type == 'latest')
        {
            $sparks              = Spark::getTop(200);
            $data['browse_type'] = 'Browse Latest';
            $data['description'] = 'These are the most recently registered sparks with at least one release.';
        }
        elseif($type == 'featured')
        {
            $sparks              = Spark::getLatestOf(FALSE, TRUE);
            $data['browse_type'] = 'Browse Featured';
            $data['description'] = 'These are sparks that the GetSparks team thinks are worth a spin';
        }
        elseif($type == 'official')
        {
            $sparks              = Spark::getLatestOf(FALSE, NULL, TRUE);
            $data['browse_type'] = 'Browse Official';
            $data['description'] = 'These are sparks written by GetSparks, the Reactor Team, or CodeIgntier gurus';
        }
        else
        {
            # Ugly fix for now, not sure why we didn't have a 'browse all'
            # in the first place :P
            $sparks = Spark::getTop(1000);
            $data['browse_type'] = 'Browse All';
            $data['description'] = 'These are all of GetSparks\' sparks';
        }

        # Get a list of spark ids on this page
        $ids = array(); foreach($sparks as $s) $ids[] = $s->id;

        # Wait until the views are donw
        $data['sparks'] = $sparks;
        $data['ratings'] = $this->rating->getRatingsFromList($ids);

        $this->load->view('packages/listing', $data);
    }

    /**
     * Show the spark search page
     */
    function search()
    {
		$this->load->helper('form');
		$this->load->library('form_validation');

		$submit = $this->input->post('submit');
		$search_results = array();

		$search_term = $this->input->post('term');
        $data['ratings'] = array();
        
		if($submit)
		{
			if($this->form_validation->run('search'))
			{
				$this->load->model('spark');
				$this->load->model('rating');

				$search_results = Spark::search($search_term);
                $ids = array(); foreach($search_results as $s) $ids[] = $s->id;
                $data['ratings'] = $this->rating->getRatingsFromList($ids);
			}
			else
			{
				UserHelper::setNotice('Whoops. There were some errors. Check below and re-submit!');
			}
		}

		$data['search_term'] = $search_term;
		$data['sparks']   = $search_results;
		$data['description'] = 'These are the most recently registered sparks with at least one release.';

		$this->load->view('search/listing', $data);
    }
}
