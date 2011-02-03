<?php

class Packages extends CI_Controller
{
    public function spec($package_name, $version, $format)
    {
        $this->load->model('spark');
        $this->load->model('contributor');

        $spark = Spark::get($package_name, $version);
        $contributor = $spark->getContributor();

        $spark->contributor = $contributor;

        $this->output->set_output(json_encode($spark));
    }
}