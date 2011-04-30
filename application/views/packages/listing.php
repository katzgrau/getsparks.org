<?php
$title = ($browse_type != '' ? "$browse_type " : "") . 'Packages';
$this->load->view('global/_new_header.php', array('title' => $title)); 
$this->load->helper('rating');?>

<h2><?php echo $title; ?></h2>
<p><?php echo $description; ?></p>

<ul id="sparklisting">
    <?php if(count($sparks) > 0): ?>
        <?php foreach($sparks as $spark): ?>
            <li>
                <div class="ratings">
                    <?php foreach (get_ratings($spark->id) as $label=>$count): ?>
                    <div class="rating">
                        <span><?php echo $count; ?></span><label><?php echo $label; ?></label>
                    </div>
                    <?php endforeach; ?>
                    <br/>
                    <div class="installcount"><?php echo number_format($spark->getInstallCount()); ?> Installs</div>
                </div>
			    <div class="sparkinfo">
                    <div class="title">
           	            <a href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show">
                            <?php echo $spark->name; ?>
                        </a> by
                        <a href="<?php echo base_url(); ?>contributors/<?php echo $spark->username; ?>/profile">
                            <?php echo $spark->username; ?>
                        </a>
                    </div>
                    <div class="summary">
                        <?php if ($spark->is_official): ?>
                            <span class="official">[Official Spark]</span>
                        <?php endif; ?>
                        <?php echo $spark->summary; ?>
                    </div>
				</div>
            </li>
        <?php endforeach; ?>
    <?php else: ?>
            <li>You haven't contributed any sparks yet.</li>
    <?php endif; ?>
</ul>
<script>
$(".rate").click(function(event) {
	event.preventDefault();
	$this = $(this);
	$.post($this.attr('href'), function(data) {
		$this.parent().html(data);
	});
});
</script>
<?php $this->load->view('global/_new_footer.php'); ?>
