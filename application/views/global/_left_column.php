<div class="page-left">
	
	<div class="login-box clearfix">
		
		<?php if (!UserHelper::isLoggedIn()) { ?>
			<form action="/login" method="post">
				<fieldset>
					<label for="email">Email Address:</label><br class="clear" />
					<input type="text" id="email" name="email" class="text-box" /><br class="clear" />
					<label for="password">Password:</label><br class="clear" />
					<input type="password" id="password" name="password" class="text-box" /><br class="clear" />
					<input type="submit" id="submit" class="submit" value="Login">
				</fieldset>
			</form>
		<?php } else { ?>
			<div class="profile-image">
				<img src="<?php echo UserHelper::getAvatarURL(80); ?>" alt="Gravatar" />
			</div>
			<div class="profile-links">
				<dl>
					<dd><a href="/contributors/profile/<?=UserHelper::getUsername();?>" title="Your Profile">View Profile</a></dd>
					<dd><a href="/contributors/<?=UserHelper::getUsername();?>/profile/edit" title="Your Profile">Update Profile</a></dd>
					<dd><a href="/logout" title="Logout">Logout</a></dd>
				</dl>
			</div>
		<?php } ?>
		
	</div>
	
	<?php if (isset($official_sparks)) { ?>
	<div class="info-box clearfix">
		<h2>Official Sparks</h2>
		<ul>
			<?php foreach ($official_sparks as $spark) { ?>
			<li class="clearfix">
				<a style="font-size:16px;" href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show"><img src="<?php echo Gravatar_helper::from_email($spark->email, null, 40); ?>" /></a>
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
	<?php } ?>
	
	<!--
	<div class="info-box clearfix">
		<h2>Recent News</h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod congue ligula quis pellentesque. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris luctus consectetur lectus, in porttitor felis dictum ut. Pellentesque nec mi eget nisl sagittis ultricies. Quisque nunc nulla, facilisis nec sollicitudin vel, luctus nec elit. Vivamus imperdiet vehicula lacus, sit amet consectetur magna tristique facilisis.</p>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod congue ligula quis pellentesque. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris luctus consectetur lectus, in porttitor felis dictum ut. Pellentesque nec mi eget nisl sagittis ultricies. Quisque nunc nulla, facilisis nec sollicitudin vel, luctus nec elit. Vivamus imperdiet vehicula lacus, sit amet consectetur magna tristique facilisis.</p>
	</div>
	-->
	
</div>