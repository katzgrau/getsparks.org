<?php

/*
|--------------------------------------------------------------------------
| Combine / Minify / Less
|--------------------------------------------------------------------------
|
| Flags whether files should be combined or minified, and css parsed with less.
|
*/
// Environment (if it's set to 'dev', no processing will be done)
$config['assets']['env'] 		= (config_item('is_production') ? 'production' : 'dev');
$config['assets']['combine'] 	= true;
$config['assets']['minify_js'] 	= true;
$config['assets']['minify_css'] = true;
$config['assets']['less_css'] 	= false;

/*
|--------------------------------------------------------------------------
| Default paths and directories
|--------------------------------------------------------------------------
|
| Default directories containing the assets
|
*/

$config['assets']['assets_dir'] = 'static';
$config['assets']['js_dir'] 	= 'scripts';
$config['assets']['css_dir'] 	= 'styles';
$config['assets']['cache_dir'] 	= 'cache';


