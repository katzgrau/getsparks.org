<?php

function table_torch_title( $table ){

	$CI = &get_instance();
	
	
	if( $CI->router->fetch_method() == 'listing' ){
		$singular=FALSE;
	}else{
		$singular = TRUE;
	}

	$str = humanize( $table );
	if( $singular == TRUE ){
		return singular( $str );
	}else{
		return $str;
	}
}



function table_torch_nav(){
	
	
	$CI = &get_instance();
	$tables = $CI->config->item( 'torch_tables' );
	$prefs = $tables[ TORCH_TABLE ];
	
	$extra_links = $CI->config->item( 'table_extra_nav_links' );
	if( isset( $_SERVER['HTTP_REFERER'] )){
		$refer = $_SERVER['HTTP_REFERER'];
	}else{
		$refer = CUR_CONTROLLER;
	}
	
	$str = "<ul id=\"navHeader\">\n";
	
	
	if( TORCH_METHOD == 'edit' or  TORCH_METHOD == 'add' ){
		$str .= "<li class=\"backLink\"><a href=\"$refer\">" . $CI->lang->line( 'table_torch_back_to_listing' ) ."</a></li>\n";
	}else if( TORCH_METHOD == 'listing' and $prefs[ 'add' ] == TRUE ){
		$str .= "<li class=\"backLink\">\n" . anchor( CUR_CONTROLLER . '/'.CUR_METHOD ."/add/".TORCH_TABLE, $CI->lang->line( 'table_torch_add_new_link' )) ."</li>\n";
	}
	
	foreach ( $tables as $key => $table ){
		if( $key == TORCH_TABLE ){
			$class = 'active';
		}else{
			$class = '';
		}
		$label = ucwords( plural( table_torch_title( $key ) ));
		$url = site_url( CUR_CONTROLLER . '/'.CUR_METHOD .'/listing/' . $key );
		$str .= "<li><a href=\"$url\" class=\"$class\">$label</a></li>\n";
	}
	
	foreach ($extra_links as $url => $label) {
		$str .= "<li>".anchor( $url, $label )."</li>\n";
	}
	
	return $str ."\n</ul>\n";
}

