<?php
$zip    = "https://github.com/seejohnrun/sparks/zipball/master";
$loader = "http://getsparks.org/static/Loader.php.txt";

if(!file_exists("application/core"))
{
    echo "Can't find application/core. Currently this script only works
            with the default instance of Reactor. You may need to try a manual installation..\n";
    exit;
}

echo "Pulling down spark manager from $zip ...\n";
copy($zip, "sparks.zip");

echo "Pulling down Loader class core extension from $loader\n";
copy($loader, "application/core/Loader.php");

echo "Extracting zip package ...\n";

if(class_exists('ZipArchive'))
{
    $zip = new ZipArchive;
    if ($zip->open('sparks.zip') === TRUE)
    {
        $zip->extractTo('./');
        $zip->close();
        echo "Extraction complete\n";
    } 
    else
    {
        echo "Extraction failed .. exiting.\n";
        exit;
    }
}
else
{
    echo "It seems you have no PHP zip library. Use the manual installation.\n";
    exit;
}