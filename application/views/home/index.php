<?php $this->load->view('global/_header.php'); ?>

<p>
    Welcome to the CodeIgniter Spark repository. Sparks are high-quality packages
    to use in your CodeIgniter application.
</p>

<h2>Official Sparks</h2>
<p>These are sparks built by the developers of CodeIgniter</p>
<ul>
    <?php foreach($official_sparks as $spark): ?>
    <li>
        <a href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show"><?php echo $spark->name; ?></a>
         by
        <a href="<?php echo base_url(); ?>contributors/<?php echo $spark->username; ?>/profile"><?php echo $spark->username; ?></a>
        <br />
        <small><?php echo $spark->summary; ?></small>
    </li>
    <?php endforeach; ?>
</ul>

<h2>Featured Sparks</h2>
<p>These sparks are officially endorsed by the developers of Reactor as being awesome.</p>
<ul>
    <?php foreach($featured_sparks as $spark): ?>
    <li>
        <a href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show"><?php echo $spark->name; ?></a>
         by
        <a href="<?php echo base_url(); ?>contributors/<?php echo $spark->username; ?>/profile"><?php echo $spark->username; ?></a>
        <br />
        <small><?php echo $spark->summary; ?></small>
    </li>
    <?php endforeach; ?>
</ul>

<h2>Most Recent Sparks</h2>
<p>These are some of the sparks coming out of the forge right now.</p>
<ul>
    <?php foreach($top_sparks as $spark): ?>
    <li>
        <a href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show"><?php echo $spark->name; ?></a>
         by
        <a href="<?php echo base_url(); ?>contributors/<?php echo $spark->username; ?>/profile"><?php echo $spark->username; ?></a>
        <br />
        <small><?php echo $spark->summary; ?></small>
    </li>
    <?php endforeach; ?>
</ul>

<?php $this->load->view('global/_footer.php'); ?>