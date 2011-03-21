<?php

require_once dirname(__FILE__) . '/../libraries/spark_spec.php';

$args   = $_SERVER['argv'];
$script = $args[0];

if(count($args) != 2)
{
    exit("Usage: php $script [SPARK-PATH]\n");
}

$spark_path = rtrim($args[1], '/') . '/';

try
{
    $spec = Spark_spec::loadFromDirectory($spark_path);
}
catch (Exception $ex)
{
    exit("Validation failed: " . $ex->getMessage() . "\n");
}

echo "Validation passed!\n";