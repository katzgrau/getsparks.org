<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

$route['default_controller'] = "home";
$route['404_override'] = '';

$route['packages/browse/(:any)\.rss']                 = "api/rss/packages/$1";
$route['packages/(:any)\.rss']                        = "api/rss/package/$1";


# http://sparks.codeigniter.com/packages/gravataz/versions/1.0/spec.json
$route['packages/(:any)/versions/(:any)/spec[.\/](:any)'] = "packages/spec/$1/$2/$3";
$route['packages/(:any)/versions/(:any)/show']        = "packages/show/$1/$2/$3";
$route['packages/(:any)/versions/(:any)/enable']      = "packages/enable/$1/$2";
$route['packages/(:any)/versions/(:any)/disable']     = "packages/disable/$1/$2";
$route['packages/(:any)/show']                        = "packages/show/$1";
$route['packages/(:any)/edit']                        = "packages/edit/$1";
$route['packages/(:any)']                             = "packages/show/$1";
$route['packages/add']                                = "packages/add";
$route['packages/summary']                            = "packages/summary";
$route['packages/search']                             = "packages/search";
$route['packages/browse/(:any)']                      = "packages/browse/$1";

$route['search']                                      = "packages/search";

$route['api/packages/search']                         = "api/packages/search/";
$route['api/packages/(:any)/versions/(:any)/spec']    = "api/packages/spec/$1/$2";
$route['api/system/latest']                           = "api/system/latest";

$route['ajax/packages/(:any)/rate'] = "ajax/packages/rate/$1";

$route['home']             = "home/index";
$route['news']             = "home/news";
$route['download']         = "home/download";
$route['set-up']           = "home/set_up";
$route['set-up-mx']        = "home/set_up_mx";
$route['get-sparks']       = "home/get_sparks";
$route['make-sparks']      = "home/make_sparks";
$route['spec-format']      = "home/spec_format";
$route['about']            = "home/contact";
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