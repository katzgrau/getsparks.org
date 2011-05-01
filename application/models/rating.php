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
                 (SELECT COUNT(*) FROM ratings WHERE rating = 3 AND spark_id = s.id) AS 'love',
                 (SELECT COUNT(*) FROM ratings WHERE rating = 2 AND spark_id = s.id) AS 'like',
                 (SELECT COUNT(*) FROM ratings WHERE rating = 1 AND spark_id = s.id) AS 'hate'
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
                 (SELECT COUNT(*) FROM ratings WHERE rating = 3 AND spark_id = s.id) AS 'love',
                 (SELECT COUNT(*) FROM ratings WHERE rating = 2 AND spark_id = s.id) AS 'like',
                 (SELECT COUNT(*) FROM ratings WHERE rating = 1 AND spark_id = s.id) AS 'hate'
                FROM sparks s
                WHERE s.id = ?
                LIMIT 1";

        return $this->db->query($sql, array($spark_id))->row();
    }

    public function getUserRating($contributor_id, $spark_id)
    {
        $rating_names = config_item('ratings');

        $sql = "SELECT r.rating
                FROM   ratings r
                WHERE  contributor_id = ?
                AND    spark_id = ?
                LIMIT  1";

        $row = $this->db->query($sql, array($contributor_id, $spark_id))->row();

        if($row)
        {
            $row->rating_name = $rating_names[$row->rating];
            return $row;
        }
        else
        {
            return $row;
        }
    }


    public function rate($contributor_id, $spark_id, $rating)
    {
        $rating_names = array_flip(config_item('ratings'));

        if(!is_numeric($rating))
        {
            if(!array_key_exists($rating, $rating_names)) 
                return FALSE;

           $rating = $rating_names['rating'];
        }

        if(!in_array($rating, $rating_names))
            return FALSE;

        # Remove any old votes
        $this->db->where('contributor_id', $contributor_id);
        $this->db->where('spark_id', $spark_id);
        $this->db->delete('ratings');

        # Insert the new vote
        $insert = array (
            'contributor_id' => $contributor_id,
            'spark_id' => $spark_id,
            'rating' => $rating,
            'created' => date('Y-m-d H:i:s')
        );
        
        return $this->db->insert('ratings', $insert);
    }
}
