<?php
/**
 * This file contains the API controller for packages
 */

/**
 * The contraoller for API calls regarding packages
 */
class Packages extends CI_Controller
{
    /**
     * The API to search for a package
     * @param string $term The term to search for in a package
     * @param string $format The return format
     * @return $format
     */
    public function search()
    {
        $term = $this->input->get('q');
        $this->load->model('spark');

        if(strlen($term) <= 2)
        {
            $this->output->set_output(json_encode(array('success' => FALSE, 'message' => 'You must search with at least 2 characters')));
            return;
        }

        $this->output->set_output(json_encode(array('success' => true, 'results' => Spark::search($term))));
    }

    /**
     * The API call to get a spec
     * @param string $package_name
     * @param string $version
     * @param string $format
     */
    public function spec($package_name, $version)
    {
        $this->load->model('spark');
        $this->load->model('contributor');
        $this->load->model('download');

        $spark = Spark::get($package_name, $version);

        if(!$spark) show_404 ();

        $spark->spark_home  = base_url() . 'packages/' . $spark->name . '/show';
        $spark->contributor = $spark->getContributor();
        $spark->dependencies= $spark->getDependencies();

        # Omit the password hash
        unset($spark->contributor->password);

        # Do this?
        $spark->recordInstall();
        Download::recordDownload('spec');

        $this->output->set_output(json_encode(array('success' => true, 'spec' => $spark)));
    }
}