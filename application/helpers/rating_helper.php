<?php
	function get_ratings($sparks_id)
	{
		$CI = &get_instance();
		$CI->load->model('rating');
		$results = $CI->rating->get_ratings($sparks_id);
		
        $ratings = array();
		foreach($results as $result)
		{
            $ratings[ucwords($result->name)] = $result->count;
		}
		
		return $ratings;
	}
?>
