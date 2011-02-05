<?php $this->load->view('global/_header.php'); ?>

<p>
    Welcome to the CodeIgniter Spark repository. Find high-quality packages
    to use in your application.
</p>

<h2>Most Recent Sparks</h2>
<ul>
    <?php foreach($top_sparks as $spark): ?>
    <li>
        <a href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show"><?php echo $spark->display_name; ?></a>
         by
        <a href="<?php echo base_url(); ?>contributors/<?php echo $spark->username; ?>/profile"><?php echo $spark->username; ?></a>
    </li>
    <?php endforeach; ?>
</ul>

<?php $this->load->view('global/_footer.php'); ?>