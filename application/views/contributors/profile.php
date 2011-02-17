<?php $this->load->view('global/_header.php'); ?>

<h2>Profile for <?php echo $contributor->real_name; ?> (<?php echo $contributor->username; ?>)</h2>

<table>
    <tr>
        <td>Username</td>
        <td>: <?php echo $contributor->username; ?></td>
    </tr>
    <tr>
        <td>Email</td>
        <td>: <?php echo $contributor->email; ?></td>
    </tr>
    <tr>
        <td>Website</td>
        <td>: <a target="_blank" href="<?php echo $contributor->website; ?>"><?php echo $contributor->website; ?></a></td>
    </tr>
</table>

<?php if($contributor->id == UserHelper::getId()): ?>
<p>
    <a href="<?php echo base_url(); ?>contributors/<?php echo $contributor->username; ?>/profile/edit">
        Edit Your Profile
    </a>
</p>
<?php endif; ?>

<h3>Contributions</h3>
<ul>
    <?php if(count($contributions) > 0): ?>
        <?php foreach($contributions as $contribution): ?>
            <li>
                <a href="<?php echo base_url(); ?>packages/<?php echo $contribution->name; ?>/versions/HEAD/show">
                    <?php echo $contribution->name; ?> <br />
                    <small><?php echo $contribution->summary; ?></small>
                </a>
            </li>
        <?php endforeach; ?>
    <?php else: ?>
            <li>Nothin' to see here..</li>
    <?php endif; ?>
</ul>
<?php $this->load->view('global/_footer.php'); ?>