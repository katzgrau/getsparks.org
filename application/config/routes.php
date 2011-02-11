<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

$route['default_controller'] = "home";
$route['404_override'] = '';

# http://sparks.codeigniter.com/packages/gravataz/versions/1.0/spec.json
$route['packages/(:any)/versions/(:any)/spec.(:any)'] = "packages/spec/$1/$2/$3";
$route['packages/(:any)/versions/(:any)/show']        = "packages/show/$1/$2/$3";
$route['packages/(:any)/versions/(:any)/enable']      = "packages/enable/$1/$2";
$route['packages/(:any)/versions/(:any)/disable']     = "packages/disable/$1/$2";
$route['packages/(:any)/show']                        = "packages/show/$1";
$route['packages/(:any)/edit']                        = "packages/edit/$1";
$route['packages/add']                                = "packages/add";

$route['api/packages/search/(:any)/(:any)']               = "api/packages/search/$1";
$route['api/packages/(:any)/versions/(:any)/spec/(:any)'] = "api/packages/spec/$1/$2/$3";

$route['home']             = "home/index";
$route['download']         = "home/download";
$route['how']              = "home/how";
$route['about']         = "home/about";
$route['login']        = "contributors/login";
$route['logout']        = "contributors/logout";
$route['register']        = "contributors/register";

$route['contributors/(:any)/profile']        = "contributors/profile/$1";
$route['contributors/(:any)/profile/edit']   = "contributors/edit/";
$route['versions/add']                       = "versions/add";



/* End of file routes.php */
/* Location: ./application/config/routes.php */