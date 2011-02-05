<?php

class Versions extends CI_Controller
{
    public function add()
    {
        $submit = $this->input->post('submit');

        if($submit)
        {
            $this->load->library('form_validation');
            $this->load->model('version');
            $this->load->model('spark');
            
            $insert = elements(array('spark_id', 'version'), $_POST);

            if($this->form_validation->run('add-version'))
            {
                if(Version::insert($insert))
                {
                    UserHelper::setNotice("Version added!");
                }
            }
            else
            {
                UserHelper::setNotice("Try to enter a valid version string when creating a new version", FALSE);
            }

            $spark = Spark::getById($insert['spark_id']);
            redirect(base_url() . 'packages/' . $spark->name . '/show');
        }

        show_error("Whatcha doin' here?");
    }
}