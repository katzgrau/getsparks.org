<?php $this->load->view('global/_new_header.php'); ?>

<h2>Register</h2>

<p>Hook us up with some registration information, and we'll let you come on inside and start sparkin' up the place! (However, pyro's are encouraged to check their lighters at the door. Thx - "the Mgmt")</p>
<p>Already have an account? <a href="/login">Login to your account</a> now.</p>

<ul>
    <?php echo validation_errors(); ?>
</ul>

<div class="form-wrapper form-wrapper-full">
	<form action="/register" id="register" method="post">
		<fieldset>
			<label for="username">User Name:</label><br class="clear" />
			<input type="text" id="username" name="username" class="text-box" value="<?php echo set_value('username'); ?>" /><br class="clear" />
			<span class="helper">Kinda like the same one you have for Twitter/Facebook/etc.</span><br class="clear" />
			
			<label for="email">Email Address:</label><br class="clear" />
			<input type="text" id="email" name="email" class="text-box" value="<?php echo set_value('email'); ?>" /><br class="clear" />
			<span class="helper">address@domain.com</span><br class="clear" />
			
			<label for="password">Password:</label><br class="clear" />
			<input type="password" id="password" name="password" class="text-box" /><br class="clear" />
			<span class="helper">Something relatively secure (because we're not enforcing any rules)</span><br class="clear" />
			
			<label for="password_again">Confirm Password:</label><br class="clear" />
			<input type="password" id="password_again" name="password_again" class="text-box" /><br class="clear" />
			<span class="helper">And again</span><br class="clear" />
			
			<label for="real_name">Full Name:</label><br class="clear" />
			<input type="text" id="real_name" name="real_name" class="text-box" value="<?php echo set_value('real_name'); ?>" /><br class="clear" />
			<span class="helper">Make it nice (First Last) - like on a cover sheet for your 11th grade book report</span><br class="clear" />
			
			<label for="website">Web Site:</label><br class="clear" />
			<input type="text" id="website" name="website" class="text-box" value="<?php echo set_value('website'); ?>" /><br class="clear" />
			<span class="helper">http://www.example.com</span><br class="clear" />
			
			<label for="spam_check_answer">Robot Check:</label>&nbsp;&nbsp;<span class="robot-question"><?php echo $spam_question; ?></span><br class="clear" />
			<input type="text" id="spam_check_answer" name="spam_check_answer" class="text-box" /><br class="clear" />
			<span class="helper">All your base are belong to us.</span><br class="clear" />
			
			<input type="submit" name="submit" value="Register" class="button" />
		</fieldset>
	</form>
</div>

<?php $this->load->view('global/_new_footer.php'); ?>