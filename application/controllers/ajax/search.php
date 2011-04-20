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

		$submit = $this->input->post('submit');
		$search_results = array();

		$search_term = $this->input->post('term');
		
		if($submit)
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
