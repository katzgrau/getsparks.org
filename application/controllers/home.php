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
        $data['featured_sparks'] = Spark::getLatestOf(10, TRUE);
        $data['official_sparks'] = Spark::getLatestOf(10, NULL, TRUE);

		$this->load->view('home/index', $data);
	}

    function how()
    {
        $this->load->view('home/how');;
    }

    function about()
    {
        $this->load->view('home/about');
    }

    function download()
    {
        $this->load->model('download');
        Download::recordDownload('system');

        redirect(config_item('sparks_download_url'));
    }
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */