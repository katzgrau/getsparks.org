<?php
$title = 'Package Search: '.$search_term;
$this->load->view('global/_new_header.php', array('title' => $title)); ?>

<h2><?php echo $title; ?></h2>

<p><?php echo $description; ?></p>
<div id="mainsearch">
	<form action="/search" method="post">
		<fieldset>
			<label for="term">Search term</label>
			<br class="clear" />
			<input type="text" name="term" id="term" value="<?php echo $search_term; ?>" class="text-box" />
			<br class="clear" />
			<input type="submit" name="submit" class="submit" value="Search" />
		</fieldset>
	</form>
</div>
<ul id="sparklisting">
    <?php if(count($sparks) > 0): ?>
        <?php foreach($sparks as $spark): ?>
            <li>
				<div class="sparkinfo">
					<a href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show">
						<?php echo $spark->name; ?>
					</a> by
					<a href="<?php echo base_url(); ?>contributors/<?php echo $spark->username; ?>/profile">
						<?php echo $spark->username; ?>
					</a>
					<span><?php echo preg_replace("/(".$search_term.")/i", "<strong>$1</strong>", $spark->summary); ?></span>
				</div>
				<div class="sparkstats">
					<ul>
						<li><span>Number of Installs: </span> <?php echo number_format($spark->getInstallCount()); ?></li>
						<li><span>Official: </span> <?php echo $spark->is_official == 1 ? 'Yes' : 'No'; ?></li>
						<li><span>Featured: </span> <?php echo $spark->is_featured == 1 ? 'Yes' : 'No'; ?></li>
						<li><span>Supported: </span> <?php echo $spark->is_unsupported == 0 ? 'Yes' : 'No'; ?></li>
						<li><span>Approved: </span> <?php echo $spark->is_approved == 1 ? 'Yes' : 'No'; ?></li>
					</ul>
				</div>
            </li>
        <?php endforeach; ?>
    <?php else: ?>
            <li>There are no sparks returned for your search.</li>
    <?php endif; ?>
</ul>

<?php $this->load->view('global/_new_footer.php'); ?>