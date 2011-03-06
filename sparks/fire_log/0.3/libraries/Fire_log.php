<?php


class Fire_log{


	public $CI;
	public $log_file = '';
	public $today ='';
	
	public function __construct(){
		
		$this->CI = &get_instance();
		$this->CI->load->helper( array('file','url') );	
		
//		log_message( 'info', 'Hey there, You are running Fire Log Spark Version ' .$this->CI->config->item( 'fire_log_version') );	
	
		//echo getcwd();
		$this->CI->load->_ci_view_path = 'sparks/fire_log/'.$this->CI->config->item( 'fire_log_version') .'/views/';
		$this->today = 'log-'.date( 'Y-m-d') . '.php';
	
		
		if( empty( $_POST )){
			
			$this->log_file = $this->today;
			//$this->build_heading(  );
			$this->view();
		}else{
			
			if( isset( $_POST[ 'view' ] ) and isset( $_POST[ 'log_file' ])){
				$this->log_file = $_POST[ 'log_file' ];
			//	$this->build_heading(  );
				$this->view();
				
			}else if( isset( $_POST[ 'delete_file' ] )){
				
				$this->clear_file( $_POST[ 'log_file' ] );
				$this->log_file = $this->today;
				//$this->build_heading(  );
				$this->view();
				
			}
		}
	}
	


	public function view(){
		
		if( $this->log_file == $this->today ){
			$data[ 'today' ] = TRUE;
		}else{
			$data[ 'today' ] = FALSE;
		}
		
		$data[ 'list' ] = $this->list_files();
		$data[ 'log_contents' ] = $this->get_file( $this->log_file );
		$data[ 'log_file_name' ] = $this->log_file;
		$this->CI->load->view( 'fire_log_view', $data );
	}
	


	public function list_files(){
		$list = get_dir_file_info( APPPATH . 'logs' );
		$filtered_list = array();
		
		foreach ($list as $file ) {
			$file['attrs'] = '';
			$file['suffix'] = '';
			
			if( $file[ 'name' ] == $this->log_file ){
				$file['attrs'] = 'selected="selected"';
			}
			
			if( $file[ 'name' ] == $this->today ){
				$file[ 'suffix'] = ' - (' . $this->CI->lang->line( 'fire_log_today' ) . ')';
			}
			
			array_push( $filtered_list, $file ); 
			
		}
		
		return $filtered_list;
		
	}

	public function get_file( $log_file ){
		
		if( file_exists( APPPATH . 'logs/' . $log_file )){
			
			$data = str_replace( "\n\n", '',  file_get_contents( APPPATH . 'logs/' . $log_file ));
			
			if( $this->CI->config->item( 'fire_log_strip_tags') ){
				$data = strip_tags( $data );
				$data = str_replace( 'ERROR', '</span><span class="error">ERROR', $data );
				$data = str_replace( 'DEBUG', '</span><span class="debug">DEBUG', $data );
				$data = str_replace( 'INFO', '</span><span class="info">INFO', $data );
			}
			
			return $data;
		}else{
			$msg = $this->CI->lang->line( 'fire_log_not_found' );
			$msg = str_replace( '%log_file%', $this->log_file, $msg );
			return $msg;
		}
		
		
	}

	public function clear_file( $log_file ){
		$file = APPPATH . 'logs/' . $log_file;
		if( file_exists( $file )){
			@unlink( $file );
		}
	}
	




}


