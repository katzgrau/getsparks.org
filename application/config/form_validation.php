<?php

$config = array (
    'registration' => array (
        array (
            'field'   => 'username',
            'label'   => 'Username',
            'rules'   => 'required|min_length[4]|max_length[16]|alpha_dash'
        ),

        array (
            'field'   => 'email',
            'label'   => 'Email',
            'rules'   => 'required|valid_email'
        ),

        array (
            'field'   => 'password',
            'label'   => 'Password',
            'rules'   => 'required|min_length[6]|max_length[32]'
        ),

        array (
            'field'   => 'password_again',
            'label'   => 'Password Again',
            'rules'   => 'matches[password]'
        ),

        array (
            'field'   => 'real_name',
            'label'   => 'Real Name',
            'rules'   => 'required|min_length[1]|max_length[30]'
        ),

        array (
            'field'   => 'website',
            'label'   => 'Website',
            'rules'   => 'min_length[5]'
        ),

        array (
            'field'   => 'spam_check_answer',
            'label'   => 'Robot Check',
            'rules'   => 'callback_robot_check'
        )
    ),

    'edit_profile' => array (

        array (
            'field'   => 'email',
            'label'   => 'Email',
            'rules'   => 'required|valid_email'
        ),

        array (
            'field'   => 'password',
            'label'   => 'Password',
            'rules'   => 'min_length[6]|max_length[32]'
        ),

        array (
            'field'   => 'password_again',
            'label'   => 'Password Again',
            'rules'   => 'matches[password]'
        ),

        array (
            'field'   => 'real_name',
            'label'   => 'Real Name',
            'rules'   => 'required|min_length[1]|max_length[30]'
        ),

        array (
            'field'   => 'website',
            'label'   => 'Website',
            'rules'   => 'min_length[5]'
        ),
    ),

    'add-package' => array (
        array (
            'field'   => 'name',
            'label'   => 'Spark Name',
            'rules'   => 'required|min_length[3]|max_length[20]|alpha_dash|callback_package_available'
        ),

        array (
            'field'   => 'summary',
            'label'   => 'Summary',
            'rules'   => 'required|min_length[10]|max_length[200]'
        ),

        array (
            'field'   => 'description',
            'label'   => 'Description',
            'rules'   => 'required|min_length[10]'
        ),

        array (
            'field'   => 'repository_type',
            'label'   => 'Repository Type',
            'rules'   => 'required|min_length[2]|max_length[3]'
        ),
        
        array (
            'field'   => 'fork_id',
            'label'   => 'Fork Name',
            'rules'   => ''
        ),
        
        array (
            'field'   => 'is_browse',
            'label'   => 'Browsable',
            'rules'   => ''
        ),
        
        array (
            'field'   => 'base_location',
            'label'   => 'Clone URL',
            'rules'   => 'required'
        ),

        array (
            'field'   => 'website',
            'label'   => 'Website',
            'rules'   => ''
        ),

        array (
            'field'   => 'spam_check_answer',
            'label'   => 'Robot Check',
            'rules'   => 'callback_robot_check'
        )
    ),

    'edit-package' => array (
        array (
            'field'   => 'name',
            'label'   => 'Spark Name',
            'rules'   => 'required|min_length[3]|max_length[20]|alpha_dash|callback_package_available'
        ),

        array (
            'field'   => 'summary',
            'label'   => 'Summary',
            'rules'   => 'required|min_length[10]|max_length[200]'
        ),

        array (
            'field'   => 'description',
            'label'   => 'Description',
            'rules'   => 'required|min_length[10]'
        ),

        array (
            'field'   => 'repository_type',
            'label'   => 'Repository Type',
            'rules'   => 'required|min_length[2]|max_length[3]'
        ),

        array (
            'field'   => 'fork_id',
            'label'   => 'Fork Name',
            'rules'   => ''
        ),
        
        array (
            'field'   => 'is_browse',
            'label'   => 'Browsable',
            'rules'   => ''
        ),
        
        array (
            'field'   => 'base_location',
            'label'   => 'Clone URL',
            'rules'   => 'required'
        ),

        array (
            'field'   => 'website',
            'label'   => 'Website',
            'rules'   => ''
        ),

        array (
            'field'   => 'spark_id',
            'label'   => 'Spark',
            'rules'   => 'required|callback_is_owner'
        )
    ),

    'add-version' => array (
        array (
            'field'   => 'tag',
            'label'   => 'Tag',
            'rules'   => 'required|min_length[1]|max_length[20]'
        )
    ),
    'search' => array (
        array (
            'field'   => 'term',
            'label'   => 'Search term',
            'rules'   => 'required|min_length[4]|xss_clean|trim'
        ),
	),
);