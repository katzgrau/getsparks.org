<?php
$title = 'Package Search: '.$search_term;
$this->load->view('global/_new_header.php', array('title' => $title)); ?>

<h2><?php echo $title; ?></h2>

<p><?php echo $description; ?></p>
<div id="mainsearch">
	<form action="/search" method="post">
		<fieldset>
			<label for="term">Search term</label>
			<br class="clear" />
			<input type="text" name="term" id="term" value="<?php echo $search_term; ?>" class="text-box" />
			<br class="clear" />
			<input type="submit" name="submit" class="submit" value="Search" />
		</fieldset>
	</form>
</div>

<?php $this->load->view('packages/_list', array('sparks' => $sparks, 'ratings' => isset($ratings) ? $ratings : null)); ?>

<?php $this->load->view('global/_new_footer.php'); ?>
