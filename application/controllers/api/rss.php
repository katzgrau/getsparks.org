<?php
/**
 * This file contains the API controller for packages
 */

/**
 * The contraoller for API calls regarding packages
 */
class Rss extends CI_Controller
{
    public function sparks()
    {
        $this->load->model('spark');
        $sparks = Spark::getLatestOf(10);
        $this->load->view('rss/sparks', array('sparks' => $sparks));
    }

    public function versions($package_name)
    {
        $this->load->model('spark');
        $spark = Spark::getInfo($package_name);

        if(!$sparks) show_404 ();

        $versions = $spark->getVersions(TRUE);

        $this->load->view('rss/sparks', array('spark' => $spark, 'versions' => $versions));
    }
}