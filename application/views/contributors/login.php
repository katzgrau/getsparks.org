<?php $this->load->view('global/_header.php'); ?>

<p>
    Don't have an account? <a href="<?php echo base_url(); ?>register">Sign-up</a>.
</p>

<form action="<?php echo base_url(); ?>login" method="post">
    <div class="input-field">
        <div class="field-name">
            Email
        </div>
        <div class="field-value">
            <input type="text" name="email" value="" />
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
            Submit
        </div>
        <div class="field-value">
            <input type="submit" name="submit" value="Submit" />
        </div>
    </div>
</form>

<?php $this->load->view('global/_footer.php'); ?>