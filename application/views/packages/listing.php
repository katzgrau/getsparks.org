<?php
$title = ($browse_type != '' ? "$browse_type " : "") . 'Packages';
$this->load->view('global/_new_header.php', array('title' => $title)); 
?>

<h2><?php echo $title; ?></h2>
<p><?php echo $description; ?></p>

<?php $this->load->view('packages/_list', array('sparks' => $sparks)); ?>

<?php $this->load->view('global/_new_footer.php'); ?>
