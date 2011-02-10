<?php 
    $this->load->view('global/_header.php');
    $this->form_validation->set_error_delimiters('<li>', '</li>');
?>

<p>
    Already have an account? <a href="<?php echo base_url(); ?>login">Sign-in</a>.
</p>

<ul>
    <?php echo validation_errors(); ?>
</ul>

<form action="<?php echo base_url(); ?>register" method="post">
    <div class="input-field">
        <div class="field-name">
            Username
        </div>
        <div class="field-value">
            <input type="text" name="username" value="<?php echo set_value('username'); ?>" />
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Email
        </div>
        <div class="field-value">
            <input type="text" name="email" value="<?php echo set_value('email'); ?>" />
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Password
        </div>
        <div class="field-value">
            <input type="password" name="password" value="" />
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Password Again
        </div>
        <div class="field-value">
            <input type="password" name="password_again" value="" />
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Real Name
        </div>
        <div class="field-value">
            <input type="text" name="real_name" value="<?php echo set_value('real_name'); ?>" />
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Website
        </div>
        <div class="field-value">
            <input type="text" name="website" value="<?php echo set_value('website'); ?>" />
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Robot Check
        </div>
        <div class="field-value">
            <input type="text" name="spam_check_answer" value="<?php echo set_value('spam_check_answer'); ?>" /><br />
            <small><?php echo $spam_question; ?></small>
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Submit
        </div>
        <div class="field-value">
            <input type="submit" name="submit" value="Submit" />
        </div>
    </div>
</form>

<?php $this->load->view('global/_footer.php'); ?>