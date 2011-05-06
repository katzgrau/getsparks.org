<?php
/**
 * This file contains the API controller for packages
 */

/**
 * The contraoller for API calls regarding packages
 */
class Rss extends CI_Controller
{
    public function packages($type)
    {
        $this->load->model('spark');

        $n = $this->input->get('n');
        $n = $n ? $n : 10;

        if($type == 'latest')
        {
            $sparks              = Spark::getTop($n);
            $data['type']        = 'Latest';
            $data['description'] = 'These are the most recently registered sparks with at least one release.';
        }
        elseif($type == 'featured')
        {
            $sparks              = Spark::getLatestOf($n, TRUE);
            $data['type']        = 'Featured';
            $data['description'] = 'These are sparks that the GetSparks team thinks are worth a spin';
        }
        elseif($type == 'official')
        {
            $sparks              = Spark::getLatestOf($n, NULL, TRUE);
            $data['type']        = 'Official';
            $data['description'] = 'These are sparks written by GetSparks, the Reactor Team, or CodeIgntier gurus';
        }

        $data['sparks'] = $sparks;
        
        $this->load->view('rss/sparks', $data);
    }

    public function all($type)
    {
        
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