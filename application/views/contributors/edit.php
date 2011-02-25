<?php 
$this->load->view('global/_new_header.php'); 
$this->form_validation->set_error_delimiters('<li>', '</li>');
?>

<h2>Update Your Profile</h2>

<ul>
    <?php echo validation_errors(); ?>
</ul>

<div class="form-wrapper form-wrapper-full">
	<form action="/contributors/<?php echo UserHelper::getUsername(); ?>/profile/edit" method="post">
		<fieldset>
			<label for="email">Email Address:</label><br class="clear" />
			<input type="text" id="email" name="email" class="text-box" value="<?php echo set_value('email', $contributor->email); ?>" /><br class="clear" />
			<span class="helper">We know you have a fancy-schmansy email address...right?</span><br class="clear" />
			
			<label for="real_name">Full Name:</label><br class="clear" />
			<input type="text" id="real_name" name="real_name" class="text-box" value="<?php echo set_value('real_name', $contributor->real_name); ?>" /><br class="clear" />
			<span class="helper">Please capitalize your First and Last name...John Doe!</span><br class="clear" />
			
			<label for="website">Web Site:</label><br class="clear" />
			<input type="text" id="website" name="website" class="text-box" value="<?php echo set_value('website', $contributor->website); ?>" /><br class="clear" />
			<span class="helper">For my sanity at this time - "http://www.YourSite.com"</span><br class="clear" />
			
			<label for="password">Password:</label><br class="clear" />
			<input type="password" id="password" name="password" class="text-box" /><br class="clear" />
			<span class="helper">Stop using your girlfriend's name as your password!</span><br class="clear" />
			
			<label for="password_again">Confirm Password:</label><br class="clear" />
			<input type="password" id="password_again" name="password_again" class="text-box" /><br class="clear" />
			<span class="helper">Seriously bro...</span><br class="clear" />
			
			<input type="submit" name="submit" value="Update Profile" class="button" />
		</fieldset>
	</form>
</div>

<?php $this->load->view('global/_new_footer.php'); ?>