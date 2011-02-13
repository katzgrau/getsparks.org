<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php if(isset($title)) echo "$title &mdash; "; ?>CodeIgniter Sparks Repository </title>

<style type='text/css' media='all'>@import url('/static/styles/userguide.css');</style>
<link rel='stylesheet' type='text/css' media='all' href='/static/styles/userguide.css' />
<script src="/static/scripts/jquery-1.4.4.min.js"></script>
<meta http-equiv='expires' content='-1' />
<meta http-equiv= 'pragma' content='no-cache' />
<meta name='robots' content='all' />

</head>
<body>

<!-- START NAVIGATION -->
<div id="nav">
    <div id="nav_inner">
        <div style="float:left; border-left: 2px solid #808080; padding-left: 10px;">
            <?php if(UserHelper::isLoggedIn()): ?>
                <a href="<?php echo base_url(); ?>contributors/<?php echo UserHelper::getUsername(); ?>/profile">
                    <img src="<?php echo UserHelper::getAvatarURL(30); ?>" alt="Gravatar" align="middle" />
                </a>
                <span class="username"><?php echo UserHelper::getRealName(); ?></span>
                
            <?php else: ?>
                <span class="sparks_head"><a href="<?php echo base_url(); ?>">Sparks</a></span>
            <?php endif; ?>
        </div>
        <div style="float:right; padding-top: 3px;">
            <span class="downloads"><?php echo number_format(UtilityHelper::getGlobalInstallCount()); ?> Installs and Counting</span>
            <a href="<?php echo base_url() . 'set-up'; ?>" class="download"><?php echo config_item('sparks_download_text'); ?></a>
        </div>
        <div style="clear:both;"></div>
    </div>
</div>
<div id="nav2"><a name="top">&nbsp;</a></div>
<div id="masthead">
<table cellpadding="0" cellspacing="0" border="0" style="width:100%">
<tr>
<td><h1>CodeIgniter Sparks Repository</h1></td>
<td id="breadcrumb_right"></td>
</tr>
</table>
</div>
<!-- END NAVIGATION -->


<!-- START BREADCRUMB -->
<table cellpadding="0" cellspacing="0" border="0" style="width:100%">
<tr>
<td id="breadcrumb">
<a href="<?php echo base_url(); ?>">Home</a> &bull;
<a href="<?php echo base_url(); ?>about">Why</a> &bull;
<a href="<?php echo base_url(); ?>set-up">1. Set Up for Sparks</a> &bull;
<a href="<?php echo base_url(); ?>get-sparks">2. Install Sparks</a> &bull;
<a href="<?php echo base_url(); ?>make-sparks">3. Make Sparks</a>
<?php if(!UserHelper::isLoggedIn()): ?>
  &bull; <a href="<?php echo base_url(); ?>login">Login</a>
  &bull; <a href="<?php echo base_url(); ?>register">Register</a>
<?php else: ?>
  &bull; <a href="<?php echo base_url(); ?>contributors/<?php echo UserHelper::getUsername(); ?>/profile"><?php echo UserHelper::getUsername(); ?></a>
  &bull; <a href="<?php echo base_url(); ?>logout"> Logout</a>
<?php endif; ?>

</td>
<td id="searchbox"></td>
</tr>
</table>
<!-- END BREADCRUMB -->

<br clear="all" />


<!-- START CONTENT -->
<div id="content">

    <?php if($notices = UserHelper::getNotices()): ?>
        <?php foreach($notices as $notice): ?>
            <?php list($message, $is_good) = $notice; ?>
            <?php if($is_good): ?>
                <p class="message"><?php echo $message; ?></p>
            <?php else: ?>
                <p class="critical"><?php echo $message; ?></p>
            <?php endif; ?>
        <?php endforeach; ?>
    <?php endif; ?>

    