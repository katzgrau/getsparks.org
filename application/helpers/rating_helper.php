<?php
	function get_ratings($sparks_id)
	{
		$CI = &get_instance();
		$CI->load->model('rating');
		$results = $CI->rating->get_ratings($sparks_id);
		
		foreach($results as $result)
		{
        	if(UserHelper::isLoggedIn())
        	{
				$data[] = "<a class=\"rate\" href=\"/ajax/ratings/set_ratings/$sparks_id/$result->id\" 
							style=\"cursor:pointer;\">".ucwords($result->name)."</a>: $result->count";
			} else {
				$data[] = ucwords($result->name).": $result->count";
			}
		}
		
		$ratings = join(" | ", $data );
		return $ratings;
	}
?>