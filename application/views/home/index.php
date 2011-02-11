<?php $this->load->view('global/_header.php'); ?>

<p>
    Welcome to the CodeIgniter Spark repository. Sparks are high-quality packages
    to use in your CodeIgniter application.
</p>

<p class="message">
    CodeIgniter 'sparks' is an <strong><span class="meaning">upcoming framework feature</span></strong> that is <em>still being
        actively developed.</em> It's in an alpha state. <a href="<?php echo base_url(); ?>about">Read more about it here</a>.
    Follow <a href="http://twitter.com/_kennyk_">@_kennyk_</a> and <a href="http://twitter.com/seejohnrun">@seejohnrun</a> for updates.
</p>

<div class="spark-col">
    <h2>Official Sparks</h2>
    <p class="spark-cat-desc">These are sparks built by the developers of CodeIgniter</p>
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
</div>

<div class="spark-col">
    <h2>Featured Sparks</h2>
    <p class="spark-cat-desc">These sparks are officially endorsed by the developers of Reactor as being awesome.</p>
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
</div>

<div class="spark-col">
    <h2>Most Recent Sparks</h2>
    <p class="spark-cat-desc">These are some of the sparks coming out of the forge right now.</p>
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
</div>

<div style="clear:both;"></div>

<?php $this->load->view('global/_footer.php'); ?>