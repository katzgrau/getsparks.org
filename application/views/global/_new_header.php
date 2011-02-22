<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>CodeIgniter Sparks | <?php echo isset($title) ? "$title" : "The Package Manager and Repository"; ?></title>

<link rel='stylesheet' type='text/css' media='all' href='/static/styles/reset.css' />
<link rel='stylesheet' type='text/css' media='all' href='/static/styles/fancybox.css' />
<link rel='stylesheet' type='text/css' media='all' href='/static/styles/style.css' />
<link rel='stylesheet' type='text/css' media='all' href='/static/styles/clear.css' />

<script src="/static/scripts/jquery-1.4.4.min.js"></script>
<script src="/static/scripts/jquery-ui-1.8.9.min.js"></script>
<script src="/static/scripts/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<script src="/static/scripts/fancybox/jquery.easing-1.3.pack.js"></script>
<script src="/static/scripts/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>

<meta http-equiv='expires' content='-1' />
<meta http-equiv= 'pragma' content='no-cache' />
<meta name='robots' content='all' />

</head>
<body>
	
	<div id="header" class="clearfix">
		<div class="wrapper header-wrapper">
			<h1><a href="/" title="Sparks | Automated Package Management for Codeigniter">Sparks</a></h1>
			<div class="spark-count">
				<p>
					<?php echo number_format(UtilityHelper::getGlobalInstallCount()); ?> Installs and Counting!
					<a href="<?php echo base_url(); ?>set-up" title="Get Sparking!">Get Sparks Now!</a>
				</p>
			</div>
		</div>
	</div>
	
	<div id="page">
		<div class="wrapper">
			
			<?php $this->load->view('global/_left_column.php'); ?>
			
			<div class="page-right">
				