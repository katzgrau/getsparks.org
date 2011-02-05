<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

	function __construct()
	{
		parent::__construct();
	}

	function index()
	{
        $this->load->model('spark');
        $data['top_sparks'] = Spark::getTop();
		$this->load->view('home/index', $data);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */