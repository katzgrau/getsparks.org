<?php
/**
 * This file contains a controller for handling contributors
 */

/**
 * The controller for contributors
 */
class Ratings extends CI_Controller
{
    /**
	 *
     */
	public function set_ratings($spark_id, $rating)
	{
        if(UserHelper::isLoggedIn())
        {
			$this->load->model('rating');
			$this->load->helper('rating');
		
			if($this->rating->ratedBefore($spark_id, UserHelper::getId()) == 0)
				$this->rating->logRating($spark_id, UserHelper::getId(), $rating);
            
            echo get_ratings($spark_id);
        }
	}
}