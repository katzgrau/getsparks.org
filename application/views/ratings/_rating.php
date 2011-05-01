<?php $this->load->helper('rating'); ?>

<div class="ratings">
    <div>
        <?php foreach (get_ratings($spark->id) as $label=>$count): ?>
        <div class="rating">
            <span><?php echo $count; ?></span><label><?php echo $label; ?></label>
        </div>
        <?php endforeach; ?>
    </div>
    <div class="installcount"><?php echo number_format($spark->getInstallCount()); ?> Installs</div>
</div>
