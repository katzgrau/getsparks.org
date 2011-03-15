<?php
/**
 * A file that contains a model for dealing with ratings
 */

/**
 * A model for logging ratings on the site
 */
class Rating extends CI_Model
{

public function get_ratings($sparks_id)
{
	$this->db->select('rn.id,rn.name, 
		(SELECT count(rating_id) FROM ratings r WHERE rn.id = r.rating_id AND sparks_id = "'.$sparks_id.'") as `count`');

	$query = $this->db->get('rating_names rn');

	foreach ($query->result() as $row)
	{
		$data[] = $row;
	}

	return $data;
}


public function rated_before($sparks_id, $contributors_id)
{
	$data = array (
		'sparks_id'   => $sparks_id,
		'contributors_id' => $contributors_id
	);

	$query = $this->db->get_where('ratings', $data);

	return $query->num_rows();
}

/**
 * Record a rating in the rating table
 *
 * @param string  $type The type of download
 * @return bool True on success, false on failure
 */
public function log_rating($sparks_id, $contributors_id, $rating)
{
	$data = array (
		'sparks_id'   		=> $sparks_id,
		'contributors_id' 	=> $contributors_id,
		'rating_id'     	=> $rating,
		'voted'       		=> date('Y-m-d H:i:s')
	);

	return $this->db->insert('ratings', $data);
}
}