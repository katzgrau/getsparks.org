<?php

class Packages extends CI_Controller
{
    public function search($term)
    {
        $this->load->model('spark');

        if(strlen($term) <= 2)
            return json_encode(array('success' => FALSE, 'message' => 'You must search with at least 2 characters'));

        $this->output->set_output(json_encode(Spark::search($term)));
    }

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
}