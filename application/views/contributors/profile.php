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
<ul>
    <?php if(count($contributions) > 0): ?>
        <?php foreach($contributions as $contribution): ?>
            <li>
                <a href="<?php echo base_url(); ?>packages/<?php echo $contribution->name; ?>/versions/HEAD/show">
                    <?php echo $contribution->name; ?>
                </a>
				<br />
                <small><?php echo $contribution->summary; ?></small>
            </li>
        <?php endforeach; ?>
    <?php else: ?>
            <li>Not contributed sparks yet.</li>
    <?php endif; ?>
	<?php if ($contributor->id == UserHelper::getId()) { ?>
		<li class="last" style="text-align:left"><a href="/packages/add" title="Create a Spark">Create a Spark</a></li>
	<?php } ?>
</ul>

<?php $this->load->view('global/_new_footer.php'); ?>