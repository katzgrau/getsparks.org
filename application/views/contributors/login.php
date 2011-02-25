<?php $this->load->view('global/_new_header.php'); ?>

<h2>Login</h2>
<p>You know the drill - email &amp; password please. Don't have an account yet? <a href="/register">Register for one</a> right now.</p>

<div class="form-wrapper">
	<form action="/login" method="post">
		<fieldset>
			<label for="email">Email Address:</label><br class="clear" />
			<input type="text" id="email" name="email" class="text-box" /><br class="clear" />
			<label for="password">Password:</label><br class="clear" />
			<input type="password" id="password" name="password" class="text-box" /><br class="clear" />
			<input type="submit" name="submit" value="Login" class="button" />
		</fieldset>
	</form>
</div>

<?php $this->load->view('global/_new_footer.php'); ?>