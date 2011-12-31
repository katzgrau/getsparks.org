<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Small test suite for the Amazon Simple Email Service library
 *
 * @see /application/libraries/Amazon_ses.php
 */
class Test_amazon_ses extends CI_Controller {

	function index() 
	{
				
		// Load the required libraries
		$this->load->spark('amazon-ses/dev');
		$this->load->library('unit_test');
		
		// Make sure we're running in strict test mode
		$this->unit->use_strict(TRUE);
		
		// Check if the config is loaded correctly
		$this->unit->run($this->amazon_ses->from, 'is_string', 'Configuration file loaded', 'Since most config variables are protected, we only test $from and assume other config variables are in the same state.');
				
		// Set from address
		$this->amazon_ses->from('test@example.com');		
		$this->unit->run($this->amazon_ses->from, 'test@example.com', 'Set from address', '-');
		
		// Set invalid from address
		$this->amazon_ses->from('test2example.com');
		$this->unit->run($this->amazon_ses->from, 'test@example.com', 'Set invalid from address', 'Because we provided an invalid address, the previously set address is still set.');
		
		// Set to
		$receipients = 'test@example.com';
		$this->amazon_ses->to($receipients);
		$this->unit->run($this->amazon_ses->recipients['to'][0], 'test@example.com', 'Set to address (single)', '-'); 
		
		// Set invalid to
		$receipients = 'test2example.com';
		$this->amazon_ses->to($receipients);
		$this->unit->run($this->amazon_ses->recipients['to'][1], 'is_null', 'Set invalid to address (single)', '-');
		
		// Set to in comma list
		$receipients = 'test1@example.com, test2@example.com';
		$this->amazon_ses->to($receipients);
		$this->unit->run($this->amazon_ses->recipients['to'][1], 'test1@example.com', 'Set to address (comma separeted) (1)', '-');
		$this->unit->run($this->amazon_ses->recipients['to'][2], 'test2@example.com', 'Set to address (comma separeted) (2)', '-');
		
		// Set to in array
		$receipients = array('test3@example.com', 'test4@example.com');
		$this->amazon_ses->to($receipients);
		$this->unit->run($this->amazon_ses->recipients['to'][3], 'test3@example.com', 'Set to address (array) (3)', '-');
		$this->unit->run($this->amazon_ses->recipients['to'][4], 'test4@example.com', 'Set to address (array) (4)', '-');
		
		// Set subject
		$this->amazon_ses->subject('Subject');
		$this->unit->run($this->amazon_ses->subject, 'Subject', 'Set message subject', '-');
		
		// Display all results
		echo $this->unit->report();
		
	}

}