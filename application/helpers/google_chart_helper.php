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
			'chco' => '4d0202',						# Bar color
			'chbh' => '8,1',						# Bar width and spacing
			'chd' => '',							# Prefix for the data string
			'chdl' => 'Installs per week',			# Legends
			'chdlp' => 'bv'							# Legends pos
		);
		
		// Create our timestamp		
		$yearweek = date('Y') . date('W');
		
		// Go 24 weeks back
		for ($i = 0; $i <= 24; $i++)
		{
			$params['chd'] = (@$data[$yearweek] != 0 ? $data[$yearweek] . ',' : '0,') . $params['chd'];
			
			// Are we at the first week of the year?	
			if (substr($yearweek, 4, 6) == '01')
			{ 
				
				// How many weeks does previous year have?
				$year = substr($yearweek, 0, 4) - 1;
				$weeks_in_year = (date('W', mktime(0, 0, 0, 12, 31, $year)) == '01' ? 52 : date('W', mktime(0, 0, 0, 12, 31, $year)));
				$yearweek = $year . $weeks_in_year;
				
			}
			else
			{
				$yearweek = $yearweek - 1;
				
			}
			
		}
		
		// Correct for the extra comma
		$params['chd'] = 't:' . substr($params['chd'], 0, -1);
		
		return self::endpoint . '?' . http_build_query($params);
	
	}
	
}