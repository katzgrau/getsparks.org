<?php

class Packages extends CI_Controller
{
    public function spec($package_name, $version, $format)
    {
        $this->load->model('spark');
        $this->load->model('contributor');

        $spark = Spark::get($package_name, $version);

        if(!$spark) show_404 ();

        $contributor = $spark->getContributor();
        $spark->contributor = $contributor;

        $this->output->set_output(json_encode($spark));
    }

    public function add()
    {
        if(!UserHelper::isLoggedIn())
            show_error ("Sorry, ya ain't logged in.");

        $submit = $this->input->post('submit');

        if($submit)
        {
            $post = $_POST;
            $post['contributor_id'] = UserHelper::getId();
            
            $insert = elements(array('contributor_id', 'name', 'display_name', 'description', 'repository_type', 'base_location'), $post);

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

        $this->load->view('packages/show', $data);
    }
}