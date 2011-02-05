<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin Dashboard</title>

<style type='text/css' media='all'>@import url('/static/styles/userguide.css');</style>
<link rel='stylesheet' type='text/css' media='all' href='/static/styles/userguide.css' />
<script src="/static/scripts/jquery-1.4.4.min.js"></script>
<meta http-equiv='expires' content='-1' />
<meta http-equiv= 'pragma' content='no-cache' />
<meta name='robots' content='all' />

</head>
<body>

<!-- START NAVIGATION -->
<div id="nav"><div id="nav_inner"></div></div>
<div id="nav2"><a name="top">&nbsp;</a></div>
<div id="masthead">
<table cellpadding="0" cellspacing="0" border="0" style="width:100%">
<tr>
<td><h1>CodeIgniter Sparks Respository</h1></td>
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
<a href="/admin/dashboard">Top Sparks</a> &bull;
<a href="<?php echo base_url(); ?>packages/add">Contribute</a>
<?php if(!UserHelper::isLoggedIn()): ?>
  &bull; <a href="<?php echo base_url(); ?>login">Login</a>
<?php else: ?>
  &bull; <a href="<?php echo base_url(); ?>logout">[<?php echo UserHelper::getUsername(); ?>] Logout</a>
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
                <p class="critical"><?php echo $warning; ?></p>
            <?php endif; ?>
        <?php endforeach; ?>
    <?php endif; ?>

    