<?php

class Versions extends CI_Controller
{
    public function add()
    {
        $submit = $this->input->post('submit');

        if($submit)
        {
            $this->load->model('version');
            $this->load->model('spark');
            
            $insert = elements(array('spark_id', 'version'), $_POST);
            
            if(Version::insert($insert))
            {
                $spark = Spark::getById($insert['spark_id']);
                UserHelper::setNotice("Version added!");
                redirect(base_url() . 'packages/' . $spark->name . '/show');
            }
        }

        show_error("Whatcha doin' here?");
    }
}