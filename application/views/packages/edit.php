<?php
    $this->load->view('global/_new_header.php');
    $this->form_validation->set_error_delimiters('<li>', '</li>');
?>

<h2>Update Spark - <?php echo $contribution->name; ?></h2>
<p>Update away - try not to break anything though...we're getting low on sugar free Red Bull.</p>

<ul>
    <?php echo validation_errors(); ?>
</ul>

<form action="<?php echo current_url(); ?>" method="post">
	
	<label for="name">Package Name:</label><br class="clear" />
	<input type="text" id="name" name="name" class="text-box" value="<?php echo set_value('name', $contribution->name); ?>" /><br class="clear" />
	<span class="helper">Only lowercase letters, dashes, underscores, and numbers.</span><br class="clear" />
	
	<label for="summary">Summary:</label><br class="clear" />
	<input type="text" id="summary" name="summary" class="text-box" value="<?php echo set_value('summary', $contribution->summary); ?>" /><br class="clear" />
	<span class="helper">Keep it BRIEF...like ya drawers...</span><br class="clear" />
	
	<label for="description">Description:</label><br class="clear" />
	<textarea id="description" name="description"><?php echo set_value('description', $contribution->description); ?></textarea><br class="clear" />
	<span class="helper">You can get a little lengthy with this one...</span><br class="clear" />
	
	<label for="repository_type">Repository Type:</label><br class="clear" />
	<select name="repository_type" id="repository_type" class="drop-down drop-down-small">
		<option value="git" <?php if(set_value('repository_type', $contribution->repository_type) == 'git') echo 'selected'; ?>>Git (git)</option>
		<option value="hg" <?php if(set_value('repository_type', $contribution->repository_type) == 'hg') echo 'selected'; ?>>Mercurial (hg)</option>
	</select><br class="clear" />
	
	<label for="base_location">Public Clone URL:</label><br class="clear" />
	<input type="text" id="base_location" name="base_location" class="text-box" value="<?php echo set_value('base_location', $contribution->base_location); ?>" /><br class="clear" />
	<span class="helper">e.g., https://bitbucket.org/katzgrau/ci-sparks-repo</span><br class="clear" />
	
	<input type="submit" name="submit" value="Create Spark" class="button" />
	
</form>

<?php $this->load->view('global/_new_footer.php'); ?>