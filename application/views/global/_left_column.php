<script type="text/javascript" charset="utf-8">
	$('#lazy_profile').available(function() {
		$.post("/ajax/contributors/get_profile_box", function(data) {
			$("#lazy_profile").html(data);
		});
	});
</script>

<?php

$this->load->model('spark');
$featured_sparks = Spark::getLatestOf(3, TRUE);
$official_sparks = Spark::getLatestOf(3, NULL, TRUE);

?>

<div class="page-left">
	
	<div class="login-box clearfix">
        <div id="lazy_profile"></div>
	</div>
	
    <!-- Temporary Twitter -->
    
	<div class="info-box clearfix">
        <h2><a style="color:#33ccff;letter-spacing:3px;" href="http://twitter.com/getsparks">@getsparks</a></h2>
        <p>Hey! Keep up to date with the project through it's beta and public launch by following <a style="color:white;" href="http://twitter.com/getsparks">@getsparks</a>.</p>
	</div>
    
    <!-- End Twitter -->

	<?php if (isset($official_sparks)): ?>
	<div class="info-box clearfix">
		<h2>Official Sparks</h2>
		<ul>
			<?php foreach ($official_sparks as $spark): ?>
			<li class="clearfix">
				<a style="font-size:16px;" href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show"><img src="<?php echo Gravatar_helper::from_email($spark->email, null, 40); ?>" /></a>
				<p class="no-margin">
					<a style="font-size:16px;" href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show"><?php echo $spark->name; ?></a><br />
					by: <a href="<?php echo base_url(); ?>contributors/<?php echo $spark->username; ?>/profile"><?php echo $spark->username; ?></a>
				</p>
				<br class="clear" />
				<p class="no-margin"><em><?php echo $spark->summary; ?></em></p>
			</li>
			<?php endforeach; ?>
			<li class="last"><a href="<?php echo base_url(); ?>packages/browse/official">View All Official Sparks</a></li>
		</ul>
	</div>
	<?php endif; ?>
	
	<?php if (isset($featured_sparks)): ?>
	<div class="info-box clearfix">
		<h2>Featured Sparks</h2>
		<ul>
			<?php foreach ($featured_sparks as $spark): ?>
			<li class="clearfix">
				<a style="font-size:16px;" href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show"><img src="<?php echo Gravatar_helper::from_email($spark->email, null, 40); ?>" /></a>
				<p class="no-margin">
					<a style="font-size:16px;" href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show"><?php echo $spark->name; ?></a><br />
					by: <a href="<?php echo base_url(); ?>contributors/<?php echo $spark->username; ?>/profile"><?php echo $spark->username; ?></a>
				</p>
				<br class="clear" />
				<p class="no-margin"><em><?php echo $spark->summary; ?></em></p>
			</li>
			<?php endforeach; ?>
			<li class="last"><a href="<?php echo base_url(); ?>packages/browse/featured">View All Featured Sparks</a></li>
		</ul>
	</div>
	<?php endif; ?>
		
</div>
