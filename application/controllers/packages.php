<?php

class Packages extends CI_Controller
{
    public function spec($package_name, $version, $format)
    {
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

                $insert = elements(array('contributor_id', 'name', 'summary', 'description', 'repository_type', 'base_location'), $post);

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

    public function edit($package_name)
    {
        $this->load->model('spark');
        $this->load->model('contributor');
        $this->load->library('form_validation');
        $this->load->helper('form_helper');

        $submit   = $this->input->post('submit');
        $spark_id = $this->input->post('spark_id');

        if($submit)
        {
            if($this->form_validation->run('edit-package'))
            {
                $update = elements(array('name', 'summary', 'description', 'repository_type', 'base_location'), $_POST);
                Spark::update($spark_id, $update);
                UserHelper::setNotice("This spark has been updated. Thanks again, you're awesome.");
            }
            else
            {
                UserHelper::setNotice("Whoops, there were some errors...", FALSE);
            }
        }

        $spark = Spark::getInfo($package_name);
        if(!$spark) show_404();

        $this->load->view('packages/edit', array('contribution' => $spark));
    }

    public function show($package_name)
    {
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

    public function enable($package_name, $version)
    {
        $this->_setEnabled($package_name, $version, TRUE);
    }

    public function disable($package_name, $version)
    {
        $this->_setEnabled($package_name, $version, FALSE);
    }

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

    public function package_available($package_name)
    {
        $this->load->model('spark');

        if(!Spark::doesExist($package_name)) return true;

        $this->form_validation->set_message('package_available', 'Sorry! That Spark name is taken');
        return FALSE;
    }
    
    public function is_owner($spark_id)
    {
        $this->load->model('spark');

        if(Spark::getById($spark_id)->contributor_id == UserHelper::getId()) return true;

        $this->form_validation->set_message('is_owner', "Sorry, you don't own that spark. That also means you're an ass.");
        return FALSE;
    }

    function browse($type)
    {
        $this->load->model('spark');
        $sparks = array();
        $data['browse_type'] = '';
        $data['description'] = '';

        if($type == 'latest')
        {
            $sparks              = Spark::getTop(100);
            $data['browse_type'] = 'Browse Latest';
            $data['description'] = 'These are the most recently registered sparks';
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

    function search()
    {
        $this->load->model('spark');

        $data['sparks'] = array();
        $term = FALSE;
        
        if($term = $this->input->get_post('q'))
            $data['sparks'] = Spark::search($term);

        # We'll skip the view until the new design is done
        $data['browse_type'] = 'Search';
        $data['description'] = "Search results for Sparks with '$term' in the name or description";
        $data['is_search']   = TRUE;

        $this->load->view('packages/listing', $data);
    }
}