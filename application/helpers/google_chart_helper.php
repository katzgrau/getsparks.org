<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Implements a helper to create charts using Google Chart API
 * @link http://code.google.com/apis/chart/
 */
class Google_chart {
	
	const endpoint = 'https://chart.googleapis.com/chart';
	
	/**
	 * Generates a vertical barchart
	 * @param array $data
	 * @param int $length
	 * @param int $width
	 * @return string
	 */
	public static function showBarChart($data, $length, $width)
	{
		
		// Setup parameters
		$params = array(
			'chs' => $length . 'x' . $width,	
			'cht' => 'bvs',							# Chart style
			'chf' => 'bg,s,f0f0f0',					# Background fill
			'chxs' => '0,f0f0f0,11.5,0,_,f0f0f0',		   
			'chco' => '4d0202',						# Bar color
			'chtt' => 'Installs per week',			# Caption
			'chd' => 't:'							# Prefix for the data string
		);
		
		// Add each data item to the string
		foreach ($data as $item)
		{
			$params['chd'] .= $item->installs . ',';
		}
		
		// Correct for the extra comma
		$params['chd'] = substr($params['chd'], 0, -1);
		
		return self::endpoint . '?' . http_build_query($params);
	
	}
	
}