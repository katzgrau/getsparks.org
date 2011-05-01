<?php

    function get_rating_for_user($spark_id)
    {
        $CI = &get_instance();
        $CI->load->model('rating');
        return $CI->rating->get_rating_for_user($spark_id, getId());
    }

	function get_ratings($spark_id)
	{
		$CI = &get_instance();
		$CI->load->model('rating');
		$results = $CI->rating->get_ratings($spark_id);
		
        $ratings = array();
		foreach($results as $result)
		{
            $ratings[ucwords($result->name)] = $result->count;
		}
		
		return $ratings;
	}

?>
