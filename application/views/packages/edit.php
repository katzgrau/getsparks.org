<?php
    $this->load->view('global/_new_header.php');
    $this->form_validation->set_error_delimiters('<li>', '</li>');
?>

<h2>Update Spark - <?php echo $contribution->name; ?></h2>
<p>Update away - try not to break anything though...we're getting low on sugar free Red Bull.</p>

<p><a href="<?php echo base_url(); ?>packages/<?php echo $contribution->name; ?>/show">Or view the <?php echo $contribution->name; ?> page.</a></p>

<ul>
    <?php echo validation_errors(); ?>
</ul>

<div class="form-wrapper form-wrapper-full">
    <form action="<?php echo base_url(); ?>packages/<?php echo $contribution->name; ?>/edit" method="post">

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

		<label for="fork_id">Spark Fork:</label><br class="clear" />
		<select name="fork_id" id="repository_type" class="drop-down drop-down-small">
			<option value="0">Not a Fork</option>
			<?php foreach($sparkslist AS $key => $row) : ?>
			<option value="<?=$key?>" <?php if(set_value('fork_id', $contribution->fork_id) == $key) echo 'selected'; ?>><?=$row?></option>
			<?php endforeach; ?>
		</select><br class="clear" />
		<span class="helper">If this is a fork of another spark select the parent spark.</span><br class="clear" />
		
		<label for="is_browse">Browsable:</label><br class="clear" />
		<select name="is_browse" id="is_browse" class="drop-down drop-down-small">
			<option value="1" <?php if(set_value('is_browse', $contribution->repository_type) == '1') echo 'selected'; ?>>Yes</option>
			<option value="0" <?php if(set_value('is_browse', $contribution->repository_type) == '0') echo 'selected'; ?>>No</option>
		</select><br class="clear" />
		<span class="helper">Show this spark on the browsable pages.</span><br class="clear" />
		
		<label for="website">Website:</label><br class="clear" />
		<input type="text" id="base_location" name="website" class="text-box" value="<?php echo set_value('website', $contribution->website); ?>" /><br class="clear" />
		<span class="helper">The place for news and stuff about your spark (or just the github page)</span><br class="clear" />
		
		<label for="base_location">Public Clone URL:</label><br class="clear" />
		<input type="text" id="base_location" name="base_location" class="text-box" value="<?php echo set_value('base_location', $contribution->base_location); ?>" /><br class="clear" />
		<span class="helper">e.g., git://github.com/katzgrau/getsparks.org.git</span><br class="clear" />

		<input type="hidden" name="spark_id" value="<?php echo set_value('spark_id', $contribution->id); ?>">
		<input type="submit" name="submit" value="Update Spark" class="button" />

	</form>
</div>

<?php $this->load->view('global/_new_footer.php'); ?>