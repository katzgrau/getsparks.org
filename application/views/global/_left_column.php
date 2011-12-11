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
        <!-- <h2><a style="color:#33ccff;letter-spacing:3px;" href="http://twitter.com/getsparks">@getsparks</a></h2> -->
        <iframe allowtransparency="true" frameborder="0" scrolling="no"
          src="http://platform.twitter.com/widgets/follow_button.html?screen_name=getsparks&text_color=ffffff&link_color=00aeff"
          style="width:200px; height:20px;"></iframe>
        <p style="padding-top:12px;">Hey! Keep up to date with the project through its beta and public launch by following <a style="color:white;" href="http://twitter.com/getsparks">@getsparks</a>.</p>
        <a href="http://twitter.com/share" class="twitter-share-button" data-url="http://getsparks.org" data-text="GetSparks — The CodeIgniter Package Manager" data-count="horizontal" data-via="getsparks" data-related="_kennyk_">Tweet</a>
	</div>
    
    <!-- End Twitter -->

	<?php if ($items = News::getRecent()): ?>
	<div class="info-box clearfix">
		<h2>GetSparks.org News</h2>
		<ul>
			<?php foreach ($items as $item): ?>
			<li class="clearfix">
				<p class="no-margin">
					<a style="font-size:16px;" target="_blank" href="<?php echo $item->url ?>"><?php echo $item->title ?></a><br />
					<em><?php echo date('F j, Y', strtotime($item->posted)); ?></em><br />
                    from: <a href=""><?php echo parse_url($item->url, PHP_URL_HOST) ?></a>
				</p>
			</li>
			<?php endforeach; ?>
			<li class="last"><a href="<?php echo base_url(); ?>news">See More ...</a></li>
		</ul>
	</div>
	<?php endif; ?>

</div>
