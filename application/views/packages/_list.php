<?php 
    $this->load->helper('rating');
    $hide_username = isset($hide_username) ? $hide_username : false;
?>

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
                        </a> 
                        <?php if (!$hide_username): ?>
                            by
                            <a href="<?php echo base_url(); ?>contributors/<?php echo $spark->username; ?>/profile">
                                <?php echo $spark->username; ?>
                            </a>
                        <?php endif; ?>
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
            <li>No sparks here, good sir!</li>
    <?php endif; ?>
</ul>
