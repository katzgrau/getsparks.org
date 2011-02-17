<?php

require_once dirname(__FILE__) . '/../index.php';

$CI = &get_instance();
$CI->load->spark('example_spark');
$CI->example_spark->printHello();