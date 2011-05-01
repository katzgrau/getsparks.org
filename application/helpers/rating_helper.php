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

    function get_rating_for_user($spark_id)
    {
        $CI = &get_instance();
        $CI->load->model('rating');
        return $CI->rating->get_rating_for_user($spark_id, getId());
    }