<?php
/* 
 * 
 */

/**
 * The contraoller for API calls regarding packages
 */
class System extends CI_Controller
{
    public function latest()
    {
        $info = array (
            'spark_manager' => config_item('spark_manager_version_latest'),
            'spark_manager_download_url' => config_item('sparks_download_url')
        );

        $this->output->set_output(json_encode($info));
    }
}