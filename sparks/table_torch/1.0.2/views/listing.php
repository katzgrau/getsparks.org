
<?php 
$this->load->view( '_search' ); 
echo $this->pagination->create_links(); 
echo $this->table->generate( $rows );
echo $this->pagination->create_links(); 
?>