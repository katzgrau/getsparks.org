<?php

	function get_ratings($sparks_id)
	{
		$CI = &get_instance();
		$CI->load->model('rating');
		$results = (array)$CI->rating->getRatings($sparks_id);
        $display = array();

        foreach($results as $name => $count)
        {
            $display[ucwords($name)] = $count;
        }
		
		return $display;
	}
?>
