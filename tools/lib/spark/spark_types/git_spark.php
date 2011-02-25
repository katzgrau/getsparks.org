<?php

class GitSpark extends Spark {

    function __construct($data) {
        if (!self::git_installed()) throw new SparkException('You have to have git to install this spark.');
        parent::__construct($data);
        $this->tag = $this->version;
    }

    static function get_spark($data) {
        if (self::git_installed()) {
            return new GitSpark($data);
        } else {
            SparkUtils::warning('Git not found - reverting to archived copy');
            return new ZipSpark($data);
        }
    }

    private static function git_installed() {
        return !!`git`;
    }

    function location_detail() {
        return "Git repository at $this->base_location";
    }

    function retrieve() {
        // check out the right tag
        `git clone $this->base_location $this->temp_path`;
        `cd $this->temp_path; git checkout $this->tag -b $this->temp_token`;
        // remove the git directory
        SparkUtils::remove_full_directory("$this->temp_path/.git");
        return file_exists($this->temp_path);
    }

}
