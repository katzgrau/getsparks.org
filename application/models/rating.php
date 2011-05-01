<?php
/**
 * A file that contains a model for dealing with ratings
 */

/**
 * A model for logging ratings on the site
 */
class Rating extends CI_Model
{

    public function getRatingsFromList($spark_ids, $keyed = TRUE)
    {
        if(count($spark_ids) == 0) return array();

        $spark_ids = implode(',', $spark_ids);

        $sql = "SELECT s.id,
                 (SELECT COUNT(*) FROM ratings WHERE rating_name_id = 2 AND spark_id = s.id) AS 'like',
                 (SELECT COUNT(*) FROM ratings WHERE rating_name_id = 3 AND spark_id = s.id) AS 'love',
                 (SELECT COUNT(*) FROM ratings WHERE rating_name_id = 1 AND spark_id = s.id) AS 'hate'
                FROM sparks s
                WHERE s.id IN ($spark_ids)";

        $ratings = $this->db->query($sql)->result();

        if($keyed)
        {
            $hash = array();
            foreach($ratings as $rating)
            {
                $hash[$rating->id] = $rating;
                unset($hash[$rating->id]->id);
            }
            $ratings = $hash;
        }

        return $ratings;
    }

    public function getRatings($spark_id)
    {
        $sql = "SELECT
                 (SELECT COUNT(*) FROM ratings WHERE rating_name_id = 2 AND spark_id = s.id) AS 'like',
                 (SELECT COUNT(*) FROM ratings WHERE rating_name_id = 3 AND spark_id = s.id) AS 'love',
                 (SELECT COUNT(*) FROM ratings WHERE rating_name_id = 1 AND spark_id = s.id) AS 'hate'
                FROM sparks s
                WHERE s.id = ?
                LIMIT 1";

        return $this->db->query($sql, array($spark_id))->row();
    }

    public function getUserRating($contributor_id, $spark_id)
    {
        $sql = "SELECT rn.name
                FROM   ratings r
                JOIN   rating_names rn ON rn.id = r.rating_name_id
                WHERE  contributor_id = ?
                AND    spark_id = ?
                LIMIT  1";

        return $this->db->query($sql, array($contributor_id, $spark_id))->row();
    }


    public function ratedBefore($spark_id, $contributor_id)
    {
        $data = array (
            'spark_id'   => $sparks_id,
            'contributor_id' => $contributors_id
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
    public function logRating($spark_id, $contributor_id, $rating)
    {
        $data = array (
            'spark_id'   		=> $spark_id,
            'contributor_id' 	=> $contributor_id,
            'rating_name_id'  	=> $rating,
            'voted'       		=> date('Y-m-d H:i:s')
        );

        return $this->db->insert('ratings', $data);
    }
}
