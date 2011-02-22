<?php $this->load->view('global/_new_header.php'); ?>

<h2>What is Sparks?</h2>
<p>Sparks is a package management system for Codeigniter that will allow you install high-quality libraries into your applications instantly.</p>
<p>Imagine that you wanted to find an 'Auth' for an app you're writing. You're sure there must be something for CodeIgniter already written by another member of the community. You check the Sparks repository, and sure enough, there's a featured spark for auth on the front page.</p>
<div class="code">$ tools/spark install auth</div>
<p>Or</p>
<div class="code">C:\app> php tools/spark install auth</div>
<p>How <em>easy</em> was that? You should really <a href="/install">install sparks now</a>, don't you think?</p>

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

<!--
<p class="message">
    CodeIgniter sparks is an upcoming framework feature that is <em>still being
        actively developed.</em> It's in an alpha state. <a href="<?php echo base_url() . 'about'; ?>">Read more</a>.
</p>

<p>
    Welcome to the CodeIgniter Spark repository. <span class="meaning">Sparks are high-quality code packages</span>
    that you can use in your application.
</p>

<strong>There are three steps to using them</strong>:</p>

<ol>
    <li><a href="#">Get the spark package manager</a>, or <a href="#">prepare CodeIgniter manually</a> for sparks</li>
    <li><a href="#">Learn how to install sparks</a> in your application</li>
    <li>If you've written something cool for CodeIgniter, <a href="#">learn how to contribute it</a> as a spark</li>
</ol>
-->

<?php $this->load->view('global/_new_footer.php'); ?>