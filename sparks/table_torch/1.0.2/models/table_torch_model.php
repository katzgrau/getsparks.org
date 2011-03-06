<?php

if (! defined('BASEPATH')) exit('No direct script access');

class Table_torch_model extends CI_Model {


	//php 5 constructor
	function __construct() {
		parent::__construct();
	}
	
	
	function get_by_key(){
		
		$q = $this->db->where( PRIMARY_KEY, TORCH_KEY )->limit( 1 )->get( TORCH_TABLE );
		return $q->row_array();
	}
	
	public function get_listing( $params=array(), $limit, $offset ){
		
		$this->db->limit( $limit )->offset( $offset );
		
		if( !empty($params[ 'search_field' ] )){
			$this->db->like( $params[ 'search_field' ], $params[ 'keyword'] );
		}
		
		if( !empty($params[ 'sort_field' ] )){
			$this->db->order_by( $params[ 'sort_field' ], $params[ 'sort_dir' ] );
		}
		
		
		$q= $this->db->get( TORCH_TABLE );
		$rows = $q->result_array();
		return $rows;
	}
	
	public function get_count( $params=array() ){
		
		
		if( !empty( $params[ 'search_field' ] )){
			$keyword = $params[ 'keyword'];
			$this->db->like( $params[ 'search_field' ], $keyword );
		}
		
		$q = $this->db->get( TORCH_TABLE );
		return $q->num_rows();
		
	}
	
	public function define_primary_key(){

		$desc = $this->describe_table();
		foreach ($desc as $field ) {
			if( $field[ 'Key'] == 'PRI'  ){
				$key = $field[ 'Field' ];
				define( 'PRIMARY_KEY', $key );
				return;
			}
		}
	}
	
	
	public function describe_table(){
		$table = TORCH_TABLE;
		$sql = "DESCRIBE `$table`";
		$desc = $this->db->query($sql)->result_array();
		return $desc;
	}
	
	public function update( $data ){
		$this->db->where( PRIMARY_KEY, $_POST[ PRIMARY_KEY ] )->update( TORCH_TABLE, $data );
	}
	
	public function insert( $data ){
		$this->db->insert( TORCH_TABLE, $data );
		return $this->db->insert_id();
	}
	
	public function delete(){
		$this->db->where( PRIMARY_KEY, TORCH_KEY )->delete( TORCH_TABLE );
	}
	
	public function prep_data(){

		$item = array();
		$fields = $this->db->list_fields( TORCH_TABLE );
		$data = $_POST;
		$data = $this->security->xss_clean($data);
		unset( $data[ 'id' ] );

		foreach ($fields as $field):

		if( !empty($data) ){

			if( isset( $data[ $field ] )){
				$val = $data[ $field ];
				$item[ $field ] = $val;
			}

		}else {

			if( isset( $_POST[ $field ]) ){
				$val = $this->input->post( $field );
				$item[ $field ] = $val;
			}
		}
		endforeach;
		return $item;

	}

}