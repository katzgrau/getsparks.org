#!/usr/bin/env php
<?php

$zip    = "http://getsparks.org/static/install/spark-manager-0.0.1.zip";
$loader = "http://getsparks.org/static/install/Loader.php.txt";

if(!file_exists("application/core"))
{
    echo "Can't find application/core. Currently this script only works with the default instance of Reactor. You may need to try a manual installation..\n";
    exit;
}

echo "Pulling down spark manager from $zip ...\n";
copy($zip, "sparks.zip");

echo "Pulling down Loader class core extension from $loader ...\n";
copy($loader, "application/core/Loader.php");

echo "Extracting zip package ...\n";
if(class_exists('ZipArchive'))
{
    $zip = new ZipArchive;
    if ($zip->open('sparks.zip') === TRUE)
    {
        $zip->extractTo('./tools');
        $zip->close();
    } else {
        echo "Extraction failed .. exiting.\n";
        exit;
    }
} elseif(!!@`unzip`) {
    `unzip sparks.zip -d ./tools`;
} else
{
    echo "It seems you have no PHP zip library or `unzip` in your path. Use the manual installation.\n";
    exit;
}

echo "Cleaning up ...\n";
@unlink('sparks.zip');

echo "Spark Manager has been install successfully!\n";
echo "Try: `php tools/spark help`\n";
