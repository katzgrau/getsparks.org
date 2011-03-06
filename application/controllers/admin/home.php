<?php
/**
 * This file contains a controller for the administrators of GetSparks
 */

/**
 * This is the home controller for the GetSparks admins. All methods
 *  within it are only accessibly by admin users
 */
class Home extends CI_Controller
{
    /**
     * Before we do anything, check to see if the user is an admin. If it's
     *  an un-auth'd call, log the user info (if they are logged in as a non-admin),
     *  and the IP address
     */
    public function  __construct()
    {
        parent::__construct();

        if(!UserHelper::isAdmin())
        {
            log_message('error', "Attempted unauthorized access to admin section: ".UserHelper::getEmail().'-'.UserHelper::getId().'-'.$this->input->ip_address());
            show_error("You do not have permission to access this resource. This has been logged.");
        }
    }

    /**
     * Load db scaffolding
     */
    public function db()
    {
        $this->load->spark('table_torch/1.0.2');
        $this->table_torch->route();
    }

    /**
     * Load the log viewer
     */
    public function logs()
    {
        $this->load->spark('fire_log/0.3');
    }
}