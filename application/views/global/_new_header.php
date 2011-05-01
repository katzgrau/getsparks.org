<?php $this->load->spark('assets/v0.4'); ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>CodeIgniter Sparks | <?php echo isset($title) ? "$title" : "The Package Manager and Repository"; ?></title>

<?php display_css(array('reset.css', 'fancybox.css', 'style.css', 'clear.css')); ?>

<?php display_js(array('jquery-1.4.4.min.js',
                       'jquery-ui-1.8.9.min.js',
                       'jquery.available.1.6.1.min.js',
                       'fancybox/jquery.fancybox-1.3.4.pack.js',
                       'fancybox/jquery.easing-1.3.pack.js',
                       'fancybox/jquery.mousewheel-3.0.4.pack.js',
                       'site.js')); ?>

<meta http-equiv='expires' content='-1' />
<meta http-equiv= 'pragma' content='no-cache' />
<meta name='robots' content='all' />

</head>
<body>
	
	<div id="header" class="clearfix">
		<div class="wrapper header-wrapper clearfix">
			<h1><a href="/" title="Sparks | Automated Package Management for Codeigniter">Sparks<span class="superscript">&nbsp;Beta</span></a></h1>
			<div class="spark-count">
				<p>
					<?php echo number_format(UtilityHelper::getGlobalInstallCount()); ?> Installs and Counting!
                    <a href="<?php echo config_item('sparks_download_button_url'); ?>" title="Get Sparking!"><?php echo config_item('sparks_download_button_text'); ?></a>
				</p>
			</div>
		</div>
		<div class="nav">
			<div class="wrapper clearfix">
				<dl style="float:left;margin-left:249px;">
					<dd><a href="/">Home</a></dd>
					<dd><a href="/packages/browse/latest">Browse</a></dd>
					<dd><a href="/install">Install/Setup</a></dd>
					<dd><a href="/get-sparks">Get Sparks</a></dd>
					<dd><a href="/make-sparks">Make Sparks</a></dd>
                <dd><a href="/contact">About</a></dd>
				</dl>
				<dl style="float:right">
                <dd><form action="/search" method="post" id="headersearch"><input type="text" name="term" value="" class="text-box" /><input type="submit" name="submit" class="submit" value="Search" /></form></dd>
				</dl>
			</div>
		</div>
	</div>
	
	<div id="page">
		<div class="wrapper">
			
			<?php $this->load->view('global/_left_column.php'); ?>
			
			<div class="page-right">
				
				<?php if($notices = UserHelper::getNotices()): ?>
			        <?php foreach($notices as $notice): ?>
			            <?php list($message, $is_good) = $notice; ?>
			            <?php if($is_good): ?>
							<div class="message-success">
								<p><?php echo $message; ?></p>
							</div>
			            <?php else: ?>
							<div class="message-error">
								<p><?php echo $message; ?></p>
							</div>
			            <?php endif; ?>
			        <?php endforeach; ?>
			    <?php endif; ?>
