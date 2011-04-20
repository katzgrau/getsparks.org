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

                $insert = elements(array('contributor_id', 'name', 'summary', 'description', 'website', 'repository_type', 'base_location'), $post);

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

        $this->load->view('packages/add');
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
                $update = elements(array('name', 'summary', 'description', 'website', 'repository_type', 'base_location'), $_POST);
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

        $this->load->view('packages/edit', array('contribution' => $spark));
    }

    /**
     * Show the public information page for a spark
     * @param string $package_name The package being viewed
     */
    public function show($package_name)
    {
        #UtilityHelper::tryPageCache();
        
        $this->load->model('spark');
        $this->load->model('contributor');

        $spark = Spark::getInfo($package_name);

        if(!$spark) show_404 ();

        $contributor = $spark->getContributor();

        $data['contribution'] = $spark;
        $data['contributor']  = $contributor;
        $data['versions']     = $spark->getVersions(TRUE);
        $data['versions_unverified'] = $spark->getVersions(FALSE);
        $data['is_author']    = ($contributor->id == UserHelper::getId());

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

    /**
     * The call for showing the package listing page. For type, handles
     *  'latest', 'featured' and 'official'
     * @param string $type
     */
    function browse($type)
    {
        UtilityHelper::tryPageCache(1);
        
        $this->load->model('spark');
        $sparks = array();
        $data['browse_type'] = '';
        $data['description'] = '';

        if($type == 'latest')
        {
            $sparks              = Spark::getTop(100);
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

        # Wait until the views are donw
        $data['sparks'] = $sparks;
        
        $this->load->view('packages/listing', $data);
    }

    /**
     * Show the spark search page
     */
    function search()
    {
        $this->load->model('spark');

        $data['sparks'] = array();
        $term = FALSE;
        
        if($term = $this->input->get_post('q'))
            $data['sparks'] = Spark::search($term);

        $total = count($data['sparks']);

        # We'll skip the view until the new design is done
        $data['browse_type'] = 'Search';
        $data['description'] = "There "
                                .($total == 0 ? "were " : "was ")
                                .$total
                                ." search result"
                                .($total == 1 ? "" : "s")
                                ." for Sparks with '$term' in the name or description.";
        $data['is_search']   = TRUE;

        $this->load->view('packages/listing', $data);
    }
}