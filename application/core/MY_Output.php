<?php

/**
 * An optimization to we can use APC instead of file-based page caching
 */
class MY_Output extends CI_Output
{
    /**
     * An override to the core CodeIgniter page cache writing mechanism to use APC
     * @param strint $output Page output
     * @return void
     */
    function _write_cache($output)
    {
        if(!function_exists('apc_add'))
            return parent::_write_cache ($output);

        log_message('debug', 'Writing APC Cache');

        $CI =& get_instance();

        $uri =	$CI->config->item('base_url').
				$CI->config->item('index_page').
				$CI->uri->uri_string();

		$cache_key = md5($uri);

        apc_store($cache_key, $output, $this->cache_expiration * 60);

        return;
    }

    /**
     * An override to the CI cache reading mechanism 
     * @param object $CFG CI config object
     * @param object $URI CI uri object
     * @return 
     */
    function _display_cache(&$CFG, &$URI)
    {
        if(!function_exists('apc_add'))
            return parent::_display_cache ($CFG, $URI);

        log_message('debug', 'APC Cache Check');

		$uri =	$CFG->item('base_url').
				$CFG->item('index_page').
				$URI->uri_string;

        $cache_key = md5($uri);

        $output = apc_fetch($cache_key);

        if($output === FALSE)
        {
            log_message('debug', 'APC Cache Miss..');
            return FALSE;
        }
        else
        {
            log_message('debug', 'APC Cache Hit. Sending to browser.');
        }

        # Display the cached output
        $this->_display($output);
        return TRUE;
    }
}