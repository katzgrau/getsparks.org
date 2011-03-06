<?php

function table_torch_form( $desc, $row=null ){


	$str = form_hidden( 'table', TORCH_TABLE );
	if( isset( $_SERVER['HTTP_REFERER'] )){
		$str .= form_hidden( 'refer', $_SERVER['HTTP_REFERER'] );
	}else{
		$str .= form_hidden( 'refer', CUR_CONTROLLER . '/' . CUR_METHOD . '/listing/'. $table );
	}

	if( isset( $row[ PRIMARY_KEY ] )){
		$str .= form_hidden( 'id', $row[ PRIMARY_KEY ] );
	}

	$CI = &get_instance();
	$list = array();
	$prefs = $CI->config->item( 'torch_tables' );
	if( isset( $prefs[ TORCH_TABLE ][ 'disabled' ] )){
		$list = explode( ',', $prefs[ TORCH_TABLE ][ 'disabled' ] );
	}

	foreach ($desc as $item ){
		if( in_array( $item[ 'Field' ], $list ) or $item[ 'Key' ] == 'PRI'){
			$disabled = 'disabled';
		}else{
			$disabled = '';
		}

		$str .= table_torch_field( $item, $row, $disabled );
	}
	
	return $str;
}


function table_torch_form_open(){
	
	$CI = &get_instance();
	$str = '';
	
	if( TORCH_METHOD == 'add' ){
		$str .= form_open( CUR_CONTROLLER . '/' . CUR_METHOD ."/insert/" . TORCH_TABLE );
	}else{
		$str .= form_open( CUR_CONTROLLER . '/'. CUR_METHOD . "/update/" . TORCH_TABLE );
	}
	
	$str .= "\n<div class=\"formContainer\">\n";
	return $str;
}

function table_torch_form_close(){
	$str = "\n</div>\n<hr/>";
	
	$CI = &get_instance();
	$label = $CI->lang->line( 'table_torch_' . TORCH_METHOD );
	$str .= "\n<input type=\"submit\" name=\"submit\" value=\"$label\" />\n</form>";
	return $str;
}

function table_torch_field( $item_desc, $row=NULL, $disabled=NULL ){

	$CI = &get_instance();
	$humanize = $CI->config->item( 'humanize_fields' );
	
	if( $disabled == TRUE ){
		$disabled = 'disabled';
	}

	$field = $item_desc[ 'Field' ];

	if( $row != NULL ){
		$value = $row[ $item_desc[ 'Field' ] ];
	}else{
		$value = $item_desc[ 'Default' ];
	}



	if( $item_desc[ 'Key'] == 'PRI' and $row != NULL  ){
		$disabled = 'disabled';
	}
	
	$fieldname = $field;
	if( $humanize ){
		$fieldname = humanize( $fieldname );
	}
	
	$str = form_label( $fieldname );

	if( strpos( $item_desc[ 'Type' ], 'tinyint' ) !== FALSE or strpos( $item_desc[ 'Type' ], 'enum' ) !== FALSE ){
		
		if( $disabled == NULL ){
			$str .= form_hidden( $field, 0 );
		}

		$checked = '';
		if( $value == TRUE or $value == 1 ){
			$checked = 'checked';
		}

		$str .= "<input type=\"checkbox\" name=\"$field\" value=\"1\" $checked $disabled/>\n";

		}else if( $item_desc[ 'Type' ] == 'text' ){
			$str .= "<textarea name=\"$field\" $disabled>".form_prep( $value )."</textarea>\n";
		}else{
			$str .= "<input type=\"text\" name=\"$field\" value=\"".form_prep( $value )."\" $disabled />\n";
		}
		
		return $str;
		
	}