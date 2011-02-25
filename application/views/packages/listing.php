<?php
$title = ($browse_type != '' ? "$browse_type " : "") . 'Packages';
$this->load->view('global/_new_header.php', array('title' => $title)); ?>

<h2><?php echo $title; ?></h2>

<p><?php echo $description; ?></p>
<ul>
    <?php if(count($sparks) > 0): ?>
        <?php foreach($sparks as $spark): ?>
            <li>
                <a href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show">
                    <?php echo $spark->name; ?>
                </a>
				<br />
                <small><?php echo $spark->summary; ?></small>
            </li>
        <?php endforeach; ?>
    <?php else: ?>
            <li>You haven't contributed any sparks yet.</li>
    <?php endif; ?>
</ul>

<?php $this->load->view('global/_new_footer.php'); ?>