<?php 

if (! defined('BASEPATH')) exit('No direct script access');

class Table_torch {
	
	public $dilem = "::";
	public $org_path = '';
	public $settings = array();
	public $load_prefix = '';
	public $CI;
	public $version = '1.0.2/';
	
	public $url_vals = array( 'search_field'=>'', 'keyword'=>'', 'sort_field'=>'', 'sort_dir'=>'' );

	//php 5 constructor
	function __construct() {
		
		$this->CI = &get_instance();

        if($this->CI->config->item('torch_nested_route'))
        {
            $controller = $this->CI->uri->segment( 1 )
                          .'/'
                          .$this->CI->uri->segment( 2 );
        }
        else
        {
            $controller = $this->CI->router->fetch_class();
        }

		define( 'CUR_CONTROLLER', $controller );
		define( 'CUR_METHOD', $this->CI->router->fetch_method() );
		
		$this->CI->load->library( array( 'table', 'pagination', 'security' ));
		$this->load_prefix = 'sparks/table_torch/'.$this->version;

		$this->org_path = $this->CI->load->_ci_view_path;
		$this->CI->load->database();

		$this->CI->table->set_template( $this->CI->config->item( 'table_formatting') );


	}
	
	function route(){

		$this->_disect_url();

        if($this->CI->config->item('torch_nested_route'))
        {
            $method = $this->CI->uri->segment( 4 );
            $table = $this->CI->uri->segment( 5 );
            $key = $this->CI->uri->segment( 6 );
        }
        else
        {
            $method = $this->CI->uri->segment( 3 );
            $table = $this->CI->uri->segment( 4 );
            $key = $this->CI->uri->segment( 5 );
        }

		$redirect = FALSE;

		if( empty( $table )){

			$tables = $this->CI->config->item( 'torch_tables' );
			$table = key( $tables );

			$method = 'listing';
			$redirect = TRUE;
		}

		define( 'TORCH_METHOD', $method );
		define( 'TORCH_TABLE', $table );
		define( 'TORCH_KEY', $key );
		
		$this->_check_table();
		$this->CI->table_torch_model->define_primary_key();

		if( $redirect ){
			redirect(CUR_CONTROLLER . '/' . CUR_METHOD ."/".TORCH_METHOD ."/".TORCH_TABLE );
		}else{
			$this->$method();
		}
	}


	function listing(){

		$config = $this->CI->config->item( 'pagination_settings' );
		$config['base_url'] = $this->_concat_url();
		$config['total_rows'] = $this->CI->table_torch_model->get_count( $this->url_vals ); 
		$config['uri_segment' ] = $this->CI->uri->total_segments();


		$this->CI->pagination->initialize($config);

		$data[ 'table' ] = TORCH_TABLE;
		$data[ 'total_count' ] = $config[ 'total_rows' ];
		$data[ 'rows' ] = $this->_table_data( $this->CI->uri->segment( $config[ 'uri_segment'] ) );
		$data[ 'tables' ] = $this->CI->config->item( 'torch_tables' );
		$data[ 'url_params' ] = $this->url_vals;
		$data[ 'options' ] = $this->_field_options();
		
		$tbl_settings = $data[ 'tables' ][ TORCH_TABLE ];
		
		if( isset( $tbl_settings[ 'add' ] )){
			$data[ 'add' ] = $tbl_settings[ 'add' ];
		}else{
			$data[ 'add' ] = FALSE;
		}

		if( method_exists( $this->CI, TORCH_TABLE."_listing" )){
			$method = TORCH_TABLE."_listing";
			$this->CI->$method( $data );
		}else{
			$this->load_view( 'listing', $data, TRUE );
		}
		
	}
	
	function add(){
		
		
		$data[ 'tables' ] = $this->CI->config->item( 'torch_tables' );
		$data[ 'table' ] = TORCH_TABLE;
		$data[ 'desc' ] = $this->CI->table_torch_model->describe_table();
		$data[ 'row' ] = NULL;
		
		if( method_exists( $this->CI, TORCH_TABLE."_add" )){
			$method = TORCH_TABLE."_add";
			$this->CI->$method( $data );
		}else{
			$this->load_view( 'form', $data, TRUE );
		}
	}
	


	
	function edit(){
		
		$data[ 'desc' ] = $this->CI->table_torch_model->describe_table();
		$data[ 'table' ] = TORCH_TABLE;
		$data[ 'row' ] = $this->CI->table_torch_model->get_by_key();
		$data[ 'tables' ] = $this->CI->config->item( 'torch_tables' );
		
		if( method_exists( $this->CI, TORCH_TABLE."_edit" )){
			$method = TORCH_TABLE."_edit";
			$this->CI->$method( $data );
		}else{
			$this->load_view( 'form', $data, TRUE );
		}
		
		

	}
	
	/// FORM ACTIONS /////
	
	function insert(){
		
		$data = $this->CI->table_torch_model->prep_data();
		
		if( method_exists( $this->CI, 'before_insert' ) ){
			$data = $this->CI->before_insert( $data );
		}
		
		$data[ 'id' ] = $this->CI->table_torch_model->insert( $data );
		
		if( method_exists( $this->CI, 'after_insert' ) ){
			$this->CI->after_insert( $data );
		}
		
		if( isset($_POST[ 'refer'])){
			redirect( $_POST[ 'refer' ] );
		}else{
			redirect( CUR_CONTROLLER .'/'.CUR_METHOD.'/listing/'.TORCH_TABLE );
		}
		
	}
	
	function search(){
		
		foreach ($this->url_vals as $key => $value) {
			if( isset( $_POST[ $key ] )){
				$this->url_vals[ $key ] = $_POST[ $key ];
			}
		}
		
		redirect( $this->_concat_url() );
		
	}
	
	function delete(){
		
		if( method_exists( $this->CI, 'before_delete' ) ){
			$this->CI->before_delete( TORCH_TABLE, TORCH_KEY );
		}
		
		$this->CI->table_torch_model->delete();
		
		if( method_exists( $this->CI, 'after_delete' ) ){
			$this->CI->after_delete( TORCH_TABLE, TORCH_KEY );
		}
		
		redirect( CUR_CONTROLLER ."/".CUR_METHOD."/listing/" .TORCH_TABLE );
	}
	
	function update(){

		$data = $this->CI->table_torch_model->prep_data();
		
		if( method_exists( $this->CI, 'before_update' ) ){
			$d = $data;
			$d[ PRIMARY_KEY ] = $_POST[ PRIMARY_KEY ];
			$data = $this->CI->before_update( TORCH_TABLE, $d );
			unset( $data[ PRIMARY_KEY ] ); 
		}
		
		$this->CI->table_torch_model->update( $data );
		
		if( method_exists( $this->CI, 'after_update' ) ){
			$this->CI->after_update( TORCH_TABLE, $d );
		}

		if( isset($_POST[ 'refer'])){
			redirect( $_POST[ 'refer' ] );
		}else{
			redirect( CUR_CONTROLLER .'/'.CUR_METHOD .'/listing/'.$_POST[ 'table' ] );
		}

	}

	public function load_view( $view_file, $data, $torch_view_dir=FALSE ){
		

		
		if( $torch_view_dir ){
			$this->CI->load->_ci_view_path = $this->load_prefix .'views/';
		}else{
			$this->CI->load->_ci_view_path = $this->org_path;
		}
		
		$data[ 'contents' ] = $this->CI->load->view( $view_file, $data, TRUE );
		$in_dir = $this->CI->config->item( 'template_in_torch_dir' );
		
		if( $in_dir ){
			$this->CI->load->_ci_view_path = $this->load_prefix .'views/';
		}else{
			$this->CI->load->_ci_view_path = $this->org_path;
		}
		
		$this->CI->load->view( $this->CI->config->item( 'template_file' ), $data );
	}

	// private functions

	protected function _concat_url(){
		
		$url = site_url(  CUR_CONTROLLER . "/" . CUR_METHOD . "/listing/" . TORCH_TABLE );
		
		foreach ($this->url_vals as $key => $value) {
			if( $value != '' ){
				$url .= "/$key".$this->dilem."$value";
			}
		}
		return $url;
	}



	protected function _check_table(){

		if( TORCH_TABLE == null ){
			show_error( $this->CI->lang->line( 'table_torch_table_not_specified' ) );
		}

		$tables = $this->CI->config->item( 'torch_tables' );
        //print_r($tables);
        //die(TORCH_TABLE);
		if( !isset($tables[ TORCH_TABLE ])){
			show_error( $this->CI->lang->line( 'table_torch_table_not_in_config' ) );
		}
	}



	protected function _table_data( $offset=0 ){


		$tables = $this->CI->config->item( 'torch_tables' );
		$prefs = $tables[ TORCH_TABLE ];
		$humanize = $this->CI->config->item( 'humanize_fields' );
		
		$paginate_prefs = $this->CI->config->item( 'pagination_settings' );
		$limit = $paginate_prefs[ 'per_page' ];
		
		$rows = $this->CI->table_torch_model->get_listing( $this->url_vals, $limit, $offset );

		for ($i=0; $i < count( $rows ); $i++) { 
			$row = $rows[ $i ];
			$actions = '';

			if( $prefs[ 'edit' ] ){
				$actions .= anchor( CUR_CONTROLLER .'/'.CUR_METHOD .'/edit/'.TORCH_TABLE.'/'.$row[ PRIMARY_KEY ], 'Edit', array( 'class'=>'actionLink', 'id'=>'editLink') );
			}

			if( $prefs[ 'delete' ] ){
				$confirm = $this->CI->lang->line( 'table_torch_delete_confirm' );
				$actions .= anchor( CUR_CONTROLLER .'/'.CUR_METHOD .'/delete/'.TORCH_TABLE.'/'.$row[ PRIMARY_KEY ], 'Delete', array( 'onclick'=>"return confirm('$confirm')", 'class'=>'actionLink' ) );
			}

			$tmp[ 'actions' ] = $actions;
			foreach ($rows[ $i ] as $key => $value ){ $tmp[ $key ] = $value; }
			$rows[ $i ] = $tmp;
		}

		$headers[ 0 ] = $this->CI->lang->line( 'table_torch_actions' );

		$desc = $this->CI->table_torch_model->describe_table();
		$org_vals = $this->url_vals;

		foreach ($desc as $row ){
			$class = '';
			$prefix = '';
			
			if( $org_vals[ 'sort_field' ] == $row[ 'Field' ] ){
				
				if(  $org_vals[ 'sort_dir' ] == 'ASC' ){
					$class = 'desc';
					$prefix = '&#9660;&nbsp;';
					
					$this->url_vals[ 'sort_dir' ] = 'DESC';
				}else{
					$class = 'asc';
					$prefix = '&#9650;&nbsp;';
					$this->url_vals[ 'sort_dir' ] = 'ASC';
				}
			} else{
				$this->url_vals[ 'sort_dir' ] = 'ASC';
			}
			
			$this->url_vals[ 'sort_field' ] = $row[ 'Field' ];
			$fieldname = $row[ 'Field' ];
			
			if( $humanize ){
				$fieldname = humanize( $fieldname );
			}
			array_push( $headers, anchor( $this->_concat_url(), $prefix .$fieldname, array( 'class'=>$class ))); 
		}
		
		$this->url_vals = $org_vals;
		$this->CI->table->set_heading( $headers );
		return $rows;

	}



	
	
	protected function _field_options(){
		
		$fields = $this->CI->table_torch_model->describe_table();
		$options = array();
		foreach ($fields as $field ) {
			$options[ $field[ 'Field' ] ] = $field[ 'Field' ];
		}
		
		return $options;
		
	}
	
	
	protected function _disect_url(){
		
		$segs = $this->CI->uri->segment_array();
		

		foreach( $segs as $segment){
			
			if( strpos( $segment, 'search_field' ) !== FALSE ){
				$arr = explode( $this->dilem, $segment );
				if( isset($arr[ 1 ])){
					$this->url_vals['search_field'] = $arr[ 1 ];
				}
			}
			
			if( strpos( $segment, 'keyword' ) !== FALSE ){
				$arr = explode( $this->dilem, $segment );
				if( isset($arr[ 1 ])){
					$this->url_vals['keyword'] = $arr[ 1 ];
				}
			}
			
			if( strpos( $segment, 'sort_field' ) !== FALSE ){
				$arr = explode( $this->dilem, $segment );
				if( isset($arr[ 1 ])){
					$this->url_vals['sort_field'] = $arr[ 1 ];
				}
			}
			
			if( strpos( $segment, 'sort_dir' ) !== FALSE ){
				$arr = explode( $this->dilem, $segment );
				if( isset($arr[ 1 ])){
					$this->url_vals['sort_dir'] = $arr[ 1 ];
				}
			}
		
		}
		

		
	}

	

}