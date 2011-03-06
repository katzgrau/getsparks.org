<?php

class Home extends CI_Controller
{
    public function  __construct()
    {
        parent::__construct();

        if(!UserHelper::isAdmin())
        {
            log_message('error', "Attempted unauthorized access to admin section: ".UserHelper::getEmail()."-".UserHelper::getId());
            show_error("You do not have permission to access this resource. This has been logged.");
        }
    }
    
    public function db()
    {
        $this->load->spark('table_torch/1.0.2');
        $this->table_torch->route();
    }

    public function logs()
    {
        $this->load->spark('fire_log/0.3');
    }
}