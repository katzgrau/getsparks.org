<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * This file contains the Home controller
 */

/**
 * The controller for the home pages
 */
class Home extends CI_Controller {

	function __construct()
	{
		parent::__construct();
	}

    /**
     * The front page call
     */
	function index()
	{
        if(config_item('is_production'))
            $this->output->cache(5);

        $this->load->spark('gravatar-helper/1.1');
        $this->load->helper('gravatar');

		$this->load->view('home/index');
	}

    /**
     * Wondering what the hell this is.
     * @todo Depricate if needed
     */
	function version2()
	{
		$this->load->view('home/version2');
	}

    /**
     * The call for showing install instructions
     */
    function set_up()
    {
        $this->load->view('home/set_up');
    }

    /**
     * The call for showing how to download sparks
     */
    function get_sparks()
    {
        $this->load->view('home/get_sparks');
    }

    /**
     * The call for showing how to make sparks
     */
    function make_sparks()
    {
        $this->load->view('home/make_sparks');
    }

    /**
     * The call for showing "The GetSparks.org Manifesto"
     */
    function about()
    {
        $this->load->view('home/about');
    }

    /**
     * A call for grabbing the latest copy of the spark system
     */
    function download()
    {
        $this->load->model('download');
        Download::recordDownload('system');

        redirect(config_item('sparks_download_url'));
    }

    /**
     * The call for showing "The GetSparks.org Manifesto"
     */
	function contact()
	{
		$this->load->view('home/contact');
	}

    /**
     * Do we use this?
     * @todo Look into this
     */
	function privacy()
	{
		$this->load->view('home/privacy');
	}

    /**
     * Sorta got written over by contact()
     * @todo Deprecate
     */
	function project()
	{
		$this->load->spark('gravatar-helper/1.1');
		$this->load->helper('gravatar');
		
		$this->load->view('home/project');
	}

    /**
     * The installation script
     */
    function go_sparks()
    {
        $this->load->view('home/go_sparks');
    }
}
