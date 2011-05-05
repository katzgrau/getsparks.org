<?php
/**
 * This file contains the API controller for packages
 */

/**
 * The contraoller for API calls regarding packages
 */
class Rss extends CI_Controller
{
    public function packages($package_name = FALSE)
    {
        if($package_name)
            $this->package($package_name);
        else
            $this->all();
    }

    public function all()
    {
        $this->load->model('spark');
        $sparks = Spark::getLatestOf(10);
        $this->load->view('rss/sparks', array('sparks' => $sparks));
    }

    public function package($package_name)
    {
        $this->load->model('spark');
        
        $spark = Spark::getInfo($package_name);

        if(!$spark) show_404 ();

        $versions = $spark->getVersions(TRUE);

        $this->load->view('rss/versions', array('spark' => $spark, 'versions' => $versions));
    }
}