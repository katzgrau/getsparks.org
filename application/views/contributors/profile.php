<?php $this->load->view('global/_new_header.php'); ?>

<h2>Profile for <?php echo $contributor->real_name; ?> (<?php echo $contributor->username; ?>)</h2>

<?php if($contributor->id == UserHelper::getId()): ?>
	<p><a href="<?php echo base_url(); ?>contributors/<?php echo $contributor->username; ?>/profile/edit">Edit Your Profile</a></p>
<?php endif; ?>

<table style="margin-bottom:15px">
    <tr>
        <td>Username</td>
        <td>: <?php echo $contributor->username; ?></td>
    </tr>
    <tr>
        <td>Email</td>
        <td>: <?php echo (UserHelper::isLoggedIn() ? $contributor->email : "Log in to view"); ?></td>
    </tr>
    <tr>
        <td>Website</td>
        <td>: <a target="_blank" href="<?php echo $contributor->website; ?>"><?php echo $contributor->website; ?></a></td>
    </tr>
</table>

<h3>Contributions</h3>
<?php $this->load->view('packages/_list', array('sparks' => $contributions, 'hide_username' => true, 'ratings' => isset($ratings) ? $ratings : null)); ?>

<?php $this->load->view('global/_new_footer.php'); ?>
