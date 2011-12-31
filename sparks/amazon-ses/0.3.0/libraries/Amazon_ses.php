<?php defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * CodeIgniter Amazon SES
 *
 * A CodeIgniter library to interact with Amazon Web Services (AWS) Simple Email Service (SES)
 *
 * @package        	CodeIgniter
 * @category    	Libraries
 * @author        	Joël Cox
 * @link 			https://github.com/joelcox/codeigniter-amazon-ses
 * @link			http://joelcox.nl		
 * @license         http://www.opensource.org/licenses/mit-license.html
 */
class Amazon_ses {
	
	private $_ci;               		// CodeIgniter instance
 	private $_cert_path;				// Path to SSL certificate
	
	private $_access_key;				// Amazon Access Key
	private $_secret_key;				// Amazon Secret Access Key 
	public $region = 'us-east-1';		// Amazon region your SES service is located
	
	public $from;						// Default from e-mail address
	public $from_name;					// Vanity sender name
	public $reply_to;					// Default reply-to. Same as $from if omitted
	public $recipients = array();		// Contains all recipients (to, cc, bcc)
	public $subject;					// Message subject
	public $message;					// Message body
	public $message_alt;				// Message body alternative in plain-text
	public $charset;					// Character set
	public $destroy = TRUE;				// Whether to reset everything after success		
	
	public $debug = FALSE;					
	
	/**
	 * Initializes the class and references CI and read config
	 */
	function __construct()
	{
		log_message('debug', 'Amazon SES Class Initialized');

		$this->_ci =& get_instance();
		
		// Load all config items
		$this->_ci->load->config('amazon_ses');
		$this->_access_key = $this->_ci->config->item('amazon_ses_access_key');
		$this->_secret_key = $this->_ci->config->item('amazon_ses_secret_key');
		$this->_cert_path = $this->_ci->config->item('amazon_ses_cert_path');			
		$this->from = $this->_ci->config->item('amazon_ses_from');
		$this->from_name = $this->_ci->config->item('amazon_ses_from_name');
		$this->charset = $this->_ci->config->item('amazon_ses_charset');
		
		// Check whether reply_to is not set
		if ($this->_ci->config->item('reply_to') === FALSE)
		{
			$this->reply_to = $this->_ci->config->item('amazon_ses_from');
		}
		else
		{
			$this->reply_to = $this->_ci->config->item('amazon_ses_reply_to');
		}
		
		// Is our certificate path valid?
		if ( ! file_exists($this->_cert_path))
		{
			show_error('CA root certificates not found. Please <a href="http://curl.haxx.se/ca/cacert.pem">download</a> a bundle of public root certificates and/or specify its location in config/amazon_ses.php');
		}
		
		// Load Phil's cURL library as a Spark or the normal way
		if (method_exists($this->_ci->load, 'spark'))
		{
        	$this->_ci->load->spark('curl/1.0.0');
		}

		$this->_ci->load->library('curl');
	}
	
	/**
	 * Sets the from address
	 * @param 	string 	email address the message is from
	 * @param 	string 	vanity name from which the message is sent
	 * @return 	mixed
	 */
	public function from($from, $name = FALSE)
	{
		
		$this->_ci->load->helper('email');
		
		if ($name)
		{
			$this->from_name = $name;
		}
		
		if (valid_email($from))
		{
			$this->from = $from;			
			return $this;
		}
		else
		{
			log_message('debug', 'From address is not valid');
			return FALSE;
		}
	}
	
	/**
	 * Sets the to address
	 * @param 	string 	to email address
	 * @return 	mixed 
	 */
	public function to($to)
	{
		$this->_add_address($to, 'to');
		return $this;
	}
	
	/**
	 * Sets the cc address
	 * @param 	string 	cc email address
	 * @return 	mixed 
	 */
	public function cc($cc)
	{	
		$this->_add_address($cc, 'cc');
		return $this;
	}
	
	/**
	 * Sets the bcc address
	 * @param 	string 	bcc email address
	 * @return 	mixed 
	 */
	public function bcc($bcc)
	{
		$this->_add_address($bcc, 'bcc');
		return $this;
	}
	
	/**
	 * Sets the email subject
	 * @param 	string	the subject
	 * @return 	mixed
	 */
	public function subject($subject)
	{
		$this->subject = $subject;
		return $this;
	}
	
	/**
	 * Sets the message
	 * @param 	string	the message to be sent
	 * @return 	mixed
	 */
	public function message($message)
	{
		$this->message = $message;
		return $this;
	}
	
	/**
	 * Sets the alternative message (plain-text) for when HTML email is not supported by email client
	 * @param 	string 	the alternative message to be sent
	 * @return 	mixed
	 */
	public function message_alt($message_alt)
	{
		$this->message_alt = $message_alt;
		return $this;
	}
	
	/**
	 * Sends off the email
	 * @param 	bool	whether to empty the recipients array on success
	 * @return 	bool
	 */
	public function send($destroy = TRUE)
	{
		
		// Create the message query string
		$query_string = $this->_format_query_string();
		
		// Pass it to the Amazon API	
		$response = $this->_api_request($query_string);		
		
		// Destroy recipients if set
		if ($destroy === TRUE)
		{
			unset($this->recipients);
		}
	
		return $response;
	
	}

	/**
	 * Verifies a from address as a valid sender
	 * @link 	http://docs.amazonwebservices.com/ses/latest/GettingStartedGuide/index.html?VerifyEmailAddress.html
	 * @param 	string	email address to verify as a sender
	 * @return 	bool
     * @author 	Ben Hartard
	 */
	public function verify_address($address)
	{
		
		// Prep our query string
		$query_string = array(
			'Action' => 'VerifyEmailAddress',
			'EmailAddress' => $address
		);
		
		// Hand it off to Amazon		
		return $this->_api_request($query_string);
		
	}
	
	/**
	 * Checks whether the supplied email address is verified
	 * @param	string	email address to be checked
	 * @return 	bool
	 */
	public function address_is_verified($address)
	{
		// Prep our query string
		$query_string = array(
			'Action' => 'ListVerifiedEmailAddresses'
		);

		// Get our list with verified addresses
		$response = $this->_api_request($query_string, TRUE);

		// Just return the text response when we're in debug mode
		if ($this->debug === TRUE)
		{
			return $response;
		}

		// We don't want to introduce another dependency (a XML parser)
		// so we just check if the address is present in the response
		// instead of returning an array with all addresses
		if (strpos($response, $address) === FALSE)
		{
			return FALSE;
		}
		else
		{
			return TRUE;	
		}
		
	}
	
	/**
	* Sets debug mode
	* Makes send return the actual API response instead of a bool
	* @return 	void
	*/
	public function debug($bool)
	{
		$this->debug = (bool) $bool;
	}
	
	private function _add_address($address, $type)
	{
		
		$this->_ci->load->helper('email');
		
		// Take care of arrays and comma delimitered lists	
		if ( ! $this->_format_addresses($address, $type))	
		{	
			$this->_ci->load->helper('email');
						
			if (valid_email($address))
			{
				$this->recipients[$type][] = $address;
			}
			else
			{
				log_message('debug', ucfirst($type) . ' e-mail address is not valid');
				return FALSE;	
			}
			
		}
		
	}
	
	/**
	 * Formats arrays and comma delimertered lists
	 * @param 	mixed 	the list with addresses
	 * @param 	string 	recipient type (i.e. to, cc, bcc)
	 */
	private function _format_addresses($addresses, $type)
	{
		// Make sure we're dealing with a proper type
		if (in_array($type, array('to', 'cc', 'bcc'), TRUE) === FALSE)
		{
			log_message('debug', 'Unknow type queue.');
			return FALSE;
		}
		
		// Check if the input is an array
		if (is_array($addresses))
		{
			foreach ($addresses as $address)
			{
				$this->{$type}($address);
			}
			
			return TRUE;
		}
		// Check if we're dealing with a comma seperated list
		elseif (strpos($addresses, ', ') !== FALSE)
		{
			
			// Write each element
			$addresses = explode(', ', $addresses);
			
			foreach ($addresses as $address)
			{
				$this->{$type}($address);
			}
			
			return TRUE;
			
		}
		else
		{
			
			return FALSE;
			
		}
	}
	
	/**
	 * Generates the query string for email
	 * @return	array
	 */
	private function _format_query_string()
	{
		$query_string = array(
			'Action' => 'SendEmail',
			'Source' => ($this->from_name ? $this->from_name . ' <' . $this->from . '>' : $this->from),
			'Message.Subject.Data' => $this->subject,
			'Message.Body.Text.Data' => (empty($this->message_alt) ? strip_tags($this->message) : $this->message_alt),
			'Message.Body.Html.Data' => $this->message
		);
		
		// Add all recipients to array
		if (isset($this->recipients['to']))
		{
			for ($i = 0; $i < count($this->recipients['to']); $i++)
			{
				$query_string['Destination.ToAddresses.member.' . ($i + 1)] = $this->recipients['to'][$i]; 
			}	
		}
		
		if (isset($this->recipients['cc']))
		{
			for ($i = 0; $i < count($this->recipients['cc']); $i++)
			{
				$query_string['Destination.CcAddresses.member.' . ($i + 1)] = $this->recipients['cc'][$i]; 
			}
		}
		
		if (isset($this->recipients['bcc']))
		{
			for ($i = 0; $i < count($this->recipients['bcc']); $i++)
			{
				$query_string['Destination.BccAddresses.member.' . ($i + 1)] = $this->recipients['bcc'][$i]; 
			}
		}
		
		// Add character encoding if set
		if ( ! empty($this->charset))
		{
			$query_string['Message.Body.Html.Charset'] = $this->charset;
			$query_string['Message.Body.Text.Charset'] = $this->charset;
			$query_string['Message.Subject.Charset'] = $this->charset;	
		}
				
		return $query_string;
		
	}
	
	/**
	 * Generates the X-Amzn headers
	 * @return 	string	headers including signed signature
	 */
	private function _set_headers()
	{
		$date = date(DATE_RSS);
		$signature = $this->_sign_signature($date);
		
		$this->_ci->curl->http_header('Content-Type', 'application/x-www-form-urlencoded');
		$this->_ci->curl->http_header('Date', $date);
		$this->_ci->curl->http_header('X-Amzn-Authorization', 'AWS3-HTTPS AWSAccessKeyId=' . $this->_access_key . ', Algorithm=HmacSHA256, Signature=' . $signature);
		
	}
	
	/**
	 * Calculate signature
	 * @param	string	date used in the header
	 * @return	string 	RFC 2104-compliant HMAC hash
	 */
	private function _sign_signature($date)
	{
		
		$hash = hash_hmac('sha256', $date, $this->_secret_key, TRUE);
		
		return base64_encode($hash);
	}
	
	/**
	 * Generates API endpoint
	 * @return 	string	URL to the SES endpoint for the region
	 */
	private function _endpoint()
	{		
		return 'https://email.' . $this->region . '.amazonaws.com';
	}
	
	/**
	 * Send a request to the Amazon SES API using Phil's cURL lib
	 * @param arra		query parameters that have to be added
	 * @param bool		return the actual response
	 * @return mixed
	 */
	private function _api_request($query_string, $return = FALSE)
	{
		
		// Set the endpoint		
		$this->_ci->curl->create($this->_endpoint());
				
		$this->_ci->curl->post($query_string);
		$this->_set_headers();
		
		// Make sure we connect over HTTPS and verify
		if( ! isset($_SERVER['HTTPS']))
		{
			$this->_ci->curl->ssl(TRUE, 2, $this->_cert_path);
		}
		
		// Show headers when in debug mode		
		if($this->debug === TRUE)
		{
			$this->_ci->curl->option(CURLOPT_FAILONERROR, FALSE);
			$this->_ci->curl->option(CURLINFO_HEADER_OUT, TRUE);
		}
			
		$response = $this->_ci->curl->execute();

		// Return the actual response when in debug or if requested specifically
		if($this->debug === TRUE OR $return === TRUE)
		{
			return $response;
		}
				
		// Check if everything went okay
		if ($response === FALSE)
		{
			log_message('debug', 'API request failed.');
			return FALSE;
		}
		else
		{
			return TRUE;				
		}
		
	}
		
}