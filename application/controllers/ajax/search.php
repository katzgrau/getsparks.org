<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * This file contains the Search controller
 */

/**
 * The controller for the search pages
 */
class Search extends CI_Controller {

	/**
	 * The search page call
	 */
	function index()
	{
		$this->load->helper('form');
		$this->load->library('form_validation');

		$search_results = array();

		$search_term = $this->input->get_post('term', TRUE);
		
		if($search_term)
		{
			if($this->form_validation->run('search'))
			{
				$this->load->model('spark');


				$search_results = Spark::search($search_term);
			}
			else
			{
				UserHelper::setNotice('Whoops. There were some errors. Check below and re-submit!');
			}
		}

		$data['search_term'] = $search_term;
		$data['sparks']   = $search_results;

		echo json_encode($data);
	}


}
