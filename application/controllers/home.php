<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

	function __construct()
	{
		parent::__construct();
	}

	function index()
	{
        $this->load->model('spark');
        $this->load->helper('gravatar');

        $data['top_sparks'] = Spark::getTop();
        $data['featured_sparks'] = Spark::getLatestOf(10, TRUE);
        $data['official_sparks'] = Spark::getLatestOf(10, NULL, TRUE);

		$this->load->view('home/index', $data);
	}

    function install()
    {
        $this->load->view('home/install');;
    }

    function get_sparks()
    {
        $this->load->view('home/get_sparks');;
    }

    function make_sparks()
    {
        $this->load->view('home/make_sparks');;
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

	function beau()
	{
		$this->load->model('spark');
        $this->load->helper('gravatar');

        $data['top_sparks'] = Spark::getTop();
        $data['featured_sparks'] = Spark::getLatestOf(10, TRUE);
        $data['official_sparks'] = Spark::getLatestOf(10, NULL, TRUE);

		$this->load->view('home/beau',$data);
	}
	
	function contact()
	{
		$this->load->view('home/contact');
	}
	
	function privacy()
	{
		$this->load->view('home/privacy');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */