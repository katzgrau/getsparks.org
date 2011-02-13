<?php $this->load->view('global/_header.php'); ?>

<p class="message">
    CodeIgniter sparks is an upcoming framework feature that is <em>still being
        actively developed.</em> It's in an alpha state. <a href="<?php echo base_url() . 'about'; ?>">Read more</a>.
</p>

<p>
    Welcome to the CodeIgniter Spark repository. <span class="meaning">Sparks are high-quality code packages</span>
    that you can use in your application.
</p>

<strong>There are three steps to using them</strong>:</p>

<ol>
    <li><a href="#">Get the spark package manager</a>, or <a href="#">prepare CodeIgniter manually</a> for sparks</li>
    <li><a href="#">Learn how to install sparks</a> in your application</li>
    <li>If you've written something cool for CodeIgniter, <a href="#">learn how to contribute it</a> as a spark</li>
</ol>

<div class="spark-col official">
    <h2>Official Sparks</h2>
    <p class="spark-cat-desc">These are sparks built by the developers of CodeIgniter</p>
    <ul>
        <?php foreach($official_sparks as $spark): ?>
        <li style="background: url(<?php echo GravatarHelper::from_email($spark->email, null, 40); ?>) no-repeat 0px 50%; padding-left: 50px;">
            <a href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show"><?php echo $spark->name; ?></a>
             by
            <a href="<?php echo base_url(); ?>contributors/<?php echo $spark->username; ?>/profile"><?php echo $spark->username; ?></a>
            <br />
            <small><?php echo $spark->summary; ?></small>
        </li>
        <?php endforeach; ?>
    </ul>
</div>

<div class="spark-col featured">
    <h2>Featured Sparks</h2>
    <p class="spark-cat-desc">These sparks are officially endorsed by the developers of Reactor as being awesome.</p>
    <ul>
        <?php foreach($featured_sparks as $spark): ?>
        <li style="background: url(<?php echo GravatarHelper::from_email($spark->email, null, 40); ?>) no-repeat 0px 50%; padding-left: 50px;">
            <a href="<?php echo base_url(); ?>packages/<?php echo $spark->name; ?>/versions/HEAD/show"><?php echo $spark->name; ?></a>
             by
            <a href="<?php echo base_url(); ?>contributors/<?php echo $spark->username; ?>/profile"><?php echo $spark->username; ?></a>
            <br />
            <small><?php echo $spark->summary; ?></small>
        </li>
        <?php endforeach; ?>
    </ul>
</div>

<div class="spark-col newest">
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