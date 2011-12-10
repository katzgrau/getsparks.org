<?php
$this->load->view('global/_new_header.php', array('title' => "Package Summary"));
?>

<h2>Sparks: <?php echo config_item('sparks_phrase') ?></h2>

<a class="rss_float" href="<?php echo base_url(); ?>packages/browse/latest.rss">&nbsp;</a>
<h3 class="table-title">Just Dropped: Latest Packages</h3>
<?php $this->load->view('packages/_list', array('sparks' => $latest, 'browse_path' => 'packages/browse/latest')); ?>

<a class="rss_float" href="<?php echo base_url(); ?>packages/browse/latest.rss">&nbsp;</a>
<h3 class="table-title">Tried and True: Official Packages</h3>
<?php $this->load->view('packages/_list', array('sparks' => $official, 'browse_path' => 'packages/browse/official')); ?>


<a class="rss_float" href="<?php echo base_url(); ?>packages/browse/latest.rss">&nbsp;</a>
<h3 class="table-title">So Hot: Featured Packages</h3>
<?php $this->load->view('packages/_list', array('sparks' => $featured, 'browse_path' => 'packages/browse/featured')); ?>
<?php $this->load->view('global/_new_footer.php'); ?>
