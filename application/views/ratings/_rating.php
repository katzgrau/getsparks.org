<?php 
$linkify = isset($linkify) ? $linkify : false; 
if (!isset($current_user_rating)) $current_user_rating = false;
if (!$ratings) $ratings = array();
?>

<div class="ratings">
    <div>
        <?php foreach ($ratings as $label=>$count): ?>
        <?php if ($linkify): ?>
            <a href="#" class="rating<?php if ($label == $current_user_rating) echo 'selected'; ?>">
                <span><?php echo $count; ?></span><label><?php echo ucwords($label); ?></label>
            </a>
        <?php else: ?>
            <div class="rating<?php if ($label == $current_user_rating) echo 'selected'; ?>">
                <span><?php echo $count; ?></span><label><?php echo ucwords($label); ?></label>
            </div>
        <?php endif; ?>
        <?php endforeach; ?>
    </div>
    <div class="installcount"><?php echo number_format($spark->getInstallCount()); ?> Installs</div>
</div>
