<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

$route['default_controller'] = "home";
$route['404_override'] = '';

# http://sparks.codeigniter.com/packages/gravataz/versions/1.0/spec.json
$route['packages/(:any)/versions/(:any)/spec[.\/](:any)'] = "packages/spec/$1/$2/$3";
$route['packages/(:any)/versions/(:any)/show']        = "packages/show/$1/$2/$3";
$route['packages/(:any)/versions/(:any)/enable']      = "packages/enable/$1/$2";
$route['packages/(:any)/versions/(:any)/disable']     = "packages/disable/$1/$2";
$route['packages/(:any)/show']                        = "packages/show/$1";
$route['packages/(:any)/edit']                        = "packages/edit/$1";
$route['packages/add']                                = "packages/add";
$route['packages/search']                             = "packages/search";
$route['packages/browse/(:any)']                      = "packages/browse/$1";

$route['api/packages/search']                             	= "api/packages/search/";
$route['api/packages/(:any)/versions/(:any)/spec'] 			= "api/packages/spec/$1/$2";

$route['rss/sparks/(:any)']       = "api/rss/versions/$1";
$route['rss/sparks']       = "api/rss/sparks/";


$route['home']             = "home/index";
$route['download']         = "home/download";
$route['set-up']           = "home/set_up";
$route['set-up-mx']        = "home/set_up_mx";
$route['get-sparks']       = "home/get_sparks";
$route['make-sparks']      = "home/make_sparks";
$route['spec-format']      = "home/spec_format";
$route['about']            = "home/about";
$route['login']            = "contributors/login";
$route['logout']           = "contributors/logout";
$route['register']         = "contributors/register";
$route['contact']		   = "home/contact";
$route['privacy']		   = "home/privacy";
$route['project']		   = "home/project";
$route['go-sparks']		   = "home/go_sparks";
$route['install']		   = "home/set_up";

$route['contributors/(:any)/profile']        = "contributors/profile/$1";
$route['contributors/(:any)/profile/edit']   = "contributors/edit/";
$route['versions/add']                       = "versions/add";



/* End of file routes.php */
/* Location: ./application/config/routes.php */