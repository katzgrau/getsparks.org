<?php $this->load->view('email/global/_header', array('teaser' => $teaser, 'title' => $title)) ?>

<?php echo $body ?>

<?php $this->load->view('email/global/_footer', array()) ?>