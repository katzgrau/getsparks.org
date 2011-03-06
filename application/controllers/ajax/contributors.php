<?php
/**
 * This file contains a controller for handling contributors
 */

/**
 * The controller for contributors
 */
class Contributors extends CI_Controller
{
    /**
     * An ajax call to get the current logged-in-user's profile page when logged in.
     * Loaded via ajax so the front page can be cached easily
     * Loads a login box if the user is not logged in, and a profile
     *  box if they are
     */
	public function get_profile_box()
	{
        if(UserHelper::isLoggedIn())
        {
            $this->load->view('global/_profile_box');
        }
        else
        {
            $this->load->view('global/_login_form');
        }
	}
}