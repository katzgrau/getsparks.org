<?php 
$this->load->helper('rating');
$linkify = isset($linkify) ? $linkify : false; 
?>

<div class="ratings">
    <div>
        <?php foreach (get_ratings($spark->id) as $label=>$count): ?>
        <?php if ($linkify): ?>
            <a href="#" class="rating">
                <span><?php echo $count; ?></span><label><?php echo $label; ?></label>
            </a>
        <?php else: ?>
            <div class="rating">
                <span><?php echo $count; ?></span><label><?php echo $label; ?></label>
            </div>
        <?php endif; ?>
        <?php endforeach; ?>
    </div>
    <div class="installcount"><?php echo number_format($spark->getInstallCount()); ?> Installs</div>
</div>
