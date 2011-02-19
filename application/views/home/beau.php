<?php $this->load->view('global/_new_header.php'); ?>

<div class="page-left">
	
	<div class="login-box clearfix">
		
		<form>
			<fieldset>
				<label for="user_email">Email Address:</label><br class="clear" />
				<input type="text" id="user_email" name="user[email]" class="text-box" /><br class="clear" />
				<label for="user_pass">Password:</label><br class="clear" />
				<input type="text" id="user_pass" name="user[pass]" class="text-box" /><br class="clear" />
				<input type="submit" id="submit_login" class="submit" value="Login">
			</fieldset>
		</form>
		
	</div>
	
	<div class="info-box clearfix">
		<h2>Official Sparks</h2>
		<ul>
			<?php foreach ($official_sparks as $spark) { ?>
			<li class="clearfix">
				<a style="font-size:16px;" href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show"><img src="<?php echo GravatarHelper::from_email($spark->email, null, 40); ?>" /></a>
				<p class="no-margin">
					<a style="font-size:16px;" href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show"><?php echo $spark->name; ?></a><br />
					by: <a href="<?php echo base_url(); ?>contributors/<?php echo $spark->username; ?>/profile"><?php echo $spark->username; ?></a>
				</p>
				<br class="clear" />
				<p class="no-margin"><em><?php echo $spark->summary; ?></em></p>
			</li>
			<?php } ?>
			<li class="last"><a href="#">View All Official Sparks</a></li>
		</ul>
	</div>
	
	<div class="info-box clearfix">
		<h2>Recent News</h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod congue ligula quis pellentesque. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris luctus consectetur lectus, in porttitor felis dictum ut. Pellentesque nec mi eget nisl sagittis ultricies. Quisque nunc nulla, facilisis nec sollicitudin vel, luctus nec elit. Vivamus imperdiet vehicula lacus, sit amet consectetur magna tristique facilisis.</p>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod congue ligula quis pellentesque. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris luctus consectetur lectus, in porttitor felis dictum ut. Pellentesque nec mi eget nisl sagittis ultricies. Quisque nunc nulla, facilisis nec sollicitudin vel, luctus nec elit. Vivamus imperdiet vehicula lacus, sit amet consectetur magna tristique facilisis.</p>
	</div>
	
</div>

<div class="page-right">
	<h2>What is Sparks?</h2>
	<p>Sparks is a package management system for Codeigniter that will allow you install high-quality libraries into your applications instantly.</p>
	<p>Imagine that you wanted to find an 'Auth' for an app you're writing. You're sure there must be something for CodeIgniter already written by another member of the community. You check the Sparks repository, and sure enough, there's a featured spark for auth on the front page.</p>
	<div class="code">$ tools/spark install auth</div>
	<p>Or</p>
	<div class="code">C:\app> php tools/spark install auth</div>
	<p>How <em>easy</em> was that? You should really <a href="#">install sparks now</a>, don't you think?</p>
	
	<br /><br />
	
	<div class="left-col">
		<h2>Featured Sparks</h2>
		<ul>
			<?php foreach ($featured_sparks as $spark) { ?>
			<li class="clearfix">
				<a style="font-size:16px;" href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show"><img src="<?php echo GravatarHelper::from_email($spark->email, null, 40); ?>" /></a>
				<p>
					<a style="font-size:16px;" href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show"><?php echo $spark->name; ?></a><br />
					by: <a href="<?php echo base_url(); ?>contributors/<?php echo $spark->username; ?>/profile"><?php echo $spark->username; ?></a>
				</p>
				<br class="clear" />
				<p><em><?php echo $spark->summary; ?></em></p>
			</li>
			<?php } ?>
			<li class="last"><a href="#">View All Featured Sparks</a></li>
		</ul>
	</div>
	
	<div class="right-col">
		<h2>Recent Sparks</h2>
		<ul>
			<?php foreach ($top_sparks as $spark) { ?>
			<li class="clearfix">
				<a style="font-size:16px;" href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show"><img src="<?php echo GravatarHelper::from_email($spark->email, null, 40); ?>" /></a>
				<p>
					<a style="font-size:16px;" href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show"><?php echo $spark->name; ?></a><br />
					by: <a href="<?php echo base_url(); ?>contributors/<?php echo $spark->username; ?>/profile"><?php echo $spark->username; ?></a>
				</p>
				<br class="clear" />
				<p><em><?php echo $spark->summary; ?></em></p>
			</li>
			<?php } ?>
			<li class="last"><a href="#">View All Recent Sparks</a></li>
		</ul>
	</div>
</div>

<br class="clear" />

<?php $this->load->view('global/_new_footer.php'); ?>