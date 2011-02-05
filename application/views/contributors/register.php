<?php $this->load->view('global/_header.php'); ?>

<form action="<?php echo base_url(); ?>register" method="post">
    <div class="input-field">
        <div class="field-name">
            Username
        </div>
        <div class="field-value">
            <input type="text" name="username" value="" />
        </div>
    </div>
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
            <input type="text" name="password" value="" />
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Password Again
        </div>
        <div class="field-value">
            <input type="text" name="password_again" value="" />
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Real Name
        </div>
        <div class="field-value">
            <input type="text" name="real_name" value="" />
        </div>
    </div>
    <div class="input-field">
        <div class="field-name">
            Website
        </div>
        <div class="field-value">
            <input type="text" name="website" value="" />
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