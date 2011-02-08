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
            show_error ("Sorry, ya ain't logged in.");

        $this->load->library('form_validation');
        $this->load->helper('form_helper');

        $submit = $this->input->post('submit');

        if($submit)
        {
            if($this->form_validation->run('add-package'))
            {
                $post = $_POST;
                $post['contributor_id'] = UserHelper::getId();

                $insert = elements(array('contributor_id', 'name', 'summary', 'description', 'repository_type', 'base_location'), $post);

                $this->load->model('Spark');

                if(Spark::insert($insert))
                {
                    UserHelper::setNotice("Woot, the spark's been added!");
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

    public function show($package_name)
    {
        $this->load->model('spark');
        $this->load->model('contributor');

        $spark = Spark::getInfo($package_name);

        if(!$spark) show_404 ();

        $contributor = $spark->getContributor();

        $data['contribution'] = $spark;
        $data['contributor']  = $contributor;
        $data['versions']     = $spark->getVersions();
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
}