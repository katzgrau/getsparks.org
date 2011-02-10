<?php
    $this->load->view('global/_header.php');
    $this->form_validation->set_error_delimiters('<li>', '</li>');
?>

<p>
    <a href="<?php echo base_url(); ?>contributors/<?php echo UserHelper::getUsername(); ?>/profile">
        &larr; Back To Your Profile
    </a>
</p>

<ul>
    <?php echo validation_errors(); ?>
</ul>

<form action="<?php echo current_url(); ?>" method="post">
    <div class="input-field">
        <div class="field-name">
            Name
        </div>
        <div class="field-value">
            <input type="text" name="name" value="<?php echo set_value('name', $contribution->name); ?>" /><br />
            <small>(only lowercase letters, dashes, underscores, and numbers)</small>
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Summary
        </div>
        <div class="field-value">
            <input type="text" name="summary" value="<?php echo set_value('summary', $contribution->summary); ?>" />
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Description
        </div>
        <div class="field-value">
            <textarea name="description"><?php echo set_value('description', $contribution->description); ?></textarea>
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Repository Type
        </div>
        <div class="field-value">
            <select name="repository_type">
                <option value="hg" <?php if(set_value('repository_type', $contribution->repository_type) == 'hg') echo 'selected'; ?>>Mercurial (hg)</option>
                <option value="git" <?php if(set_value('repository_type', $contribution->repository_type) == 'git') echo 'selected'; ?>>Git (git)</option>
                <option value="zip" <?php if(set_value('repository_type', $contribution->repository_type) == 'zip') echo 'selected'; ?>>Zip (zip)</option>
            </select>
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Clone URL
        </div>
        <div class="field-value">
            <input type="text" name="base_location" value="<?php echo set_value('base_location', $contribution->base_location); ?>" /><br />
            <small>e.g., https://bitbucket.org/katzgrau/ci-sparks-repo</small>
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Submit
        </div>
        <div class="field-value">
            <input type="hidden" name="spark_id" value="<?php echo $contribution->id; ?>" />
            <input type="submit" name="submit" value="Submit" />
        </div>
    </div>
</form>

<?php $this->load->view('global/_footer.php'); ?>