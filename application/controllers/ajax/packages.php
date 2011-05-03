<?php
/**
 * This file contains a controller for handling contributors
 */
require_once dirname(__FILE__) . '/../../libraries/Ajax_Controller.php';
/**
 * The controller for contributors
 */
class Packages extends Ajax_Controller
{
    /**
	 * Rate a package
     */
	public function rate($package_name)
	{
        $this->load->model('spark');
        $this->load->model('rating');

        $spark = Spark::getInfo($package_name);

        if(!$spark) show_404();

        if($this->input->post('rating') && UserHelper::isLoggedIn())
        {
			$this->load->model('rating');
			$this->rating->rate(UserHelper::getId(),
                                $spark->id,
                                $this->input->post('rating'));
        }
        else
        {
            $this->error("You are not logged in, or your request was invalid");
        }

        $this->success(array('ratings' => $this->rating->getRatings($spark->id)));
	}
}