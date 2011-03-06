<?php


/*
normally the template file is sparks/table-torch/[version]/views/template.php
if you would like to specify something different, please do so here but dont include the views dir, just folder/file 
if you file is in application/views/admin/template.php
you would specify admin/template
*/
$config[ 'template_file'] 				= 'template.php';
/*
is the template you specified above in application/third_party/table_torch/views dir?
this boolean simply tells Table Torch where to look for the template file
*/
$config[ 'template_in_torch_dir' ] 	= TRUE;
/*
pagination settings, see 
http://codeigniter.com/user_guide/libraries/pagination.html
for more details
*/
$config[ 'pagination_settings'] = array( 	'per_page'=>20,
											'full_tag_open' => '<div class="paginationWrapper">',
											'full_tag_close' => '</div>' 
										);
/*
if true this will run inflector's humanize on fields when displayed
*/
$config[ 'humanize_fields' ] = TRUE;
/*
add extra links here to appear in the nav, they will appear after the tables
*/
$config[ 'table_extra_nav_links' ] = array( 
												//'welcome/index'=>'Welcome',
												//'user/logout'=>'Log Out'
 											);
/*
preferences for the table display on the listing pages,
see http://codeigniter.com/user_guide/libraries/table.html for more details
*/
$config[ 'table_formatting'] = array(
                    						'table_open' => '<table border="0" width="100" %cellpadding="4" cellspacing="0">',
                    						'heading_row_start'   => '<tr>',
                    						'heading_row_end'     => '</tr>',
                    						'heading_cell_start'  => '<th>',
                    						'heading_cell_end'    => '</th>',

                    						'row_start'           => '<tr>',
                    						'row_end'             => '</tr>',
                    						'cell_start'          => '<td>',
                    						'cell_end'            => '</td>',

                    						'row_alt_start'       => '<tr>',
                    						'row_alt_end'         => '</tr>',
                    						'cell_alt_start'      => '<td>',
                    						'cell_alt_end'        => '</td>',

                    						'table_close'         => '</table>'
              						);
/*
these are the tables that will be "Torched"
you can specify if the rows can be edited, deleted, and added.
also you can disabled certain fields, disabled fields will show up as disabled on the edit / add forms
*/		
$config['torch_tables'] = array( 
									'contributors'=>array( 'edit'=>TRUE, 'delete'=>TRUE, 'add'=>TRUE ),
									'sparks'=>array( 'edit'=>TRUE, 'delete'=>TRUE, 'add'=>FALSE ),
									'versions'=>array( 'edit'=>TRUE, 'delete'=>TRUE, 'add'=>TRUE ),
									'downloads'=>array( 'edit'=>TRUE, 'delete'=>TRUE, 'add'=>FALSE ),
									'installs'=>array( 'edit'=>TRUE, 'delete'=>TRUE, 'add'=>FALSE ),
									
 									);

$config['torch_nested_route'] = TRUE;