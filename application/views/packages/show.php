<?php $this->load->view('global/_new_header.php', array('title' => $contribution->name)); ?>

<div id="package_ratings">
    <a class="rss_float" href="<?php echo base_url(); ?>packages/<?php echo $contribution->name; ?>.rss">&nbsp;</a>
    <?php 
        $data = array('spark' => $contribution, 'linkify' => UserHelper::isLoggedIn(), 'current_user_rating' => $current_user_rating);
        $this->load->view('ratings/_rating', $data);
    ?>
</div>

<h2 class="clearfix">Basic Information: <?php echo $contribution->name; ?></h2>
<p>
    <em><?php echo $contribution->summary; ?></em>
</p>

<div style="float:right;">
    <p>
        <a href="http://twitter.com/share" class="twitter-share-button" data-text="A #CodeIgniter Package — '<?php echo htmlentities($contribution->name); ?>'" data-count="horizontal" data-via="getsparks" data-related="_kennyk_">Tweet</a>
    </p>
    <img src="<?php echo Google_chart::showBarChart($stats, '240', '80'); ?>" style="float: right" />
</div>

<table style="margin-bottom:15px">
    <tr>
        <td>Contributor</td>
        <td>: <a href="<?php echo base_url(); ?>contributors/<?php echo $contributor->username; ?>/profile"><?php echo $contributor->username; ?></a></td>
    </tr>
    <tr>
        <td>Email</td>
        <td>: <?php echo (UserHelper::isLoggedIn() ? $contributor->email : "Log in to view"); ?></td>
    </tr>
    <tr>
        <td>Author Website</td>
        <td>: <a target="_blank" href="<?php echo prep_url($contributor->website); ?>"><?php echo $contributor->website; ?></a></td>
    </tr>
    <?php if($contribution->website): ?>
    <tr>
        <td>Spark Website</td>
        <td>: <a target="_blank" href="<?php echo prep_url($contribution->website); ?>"><?php echo $contribution->website; ?></a></td>
    </tr>
    <?php endif; ?>
    <tr>
        <td>Repository Type</td>
        <td>: <?php echo $contribution->repository_type; ?></td>
    </tr>
    <tr>
        <td>Number of Installs</td>
        <td>: <?php echo number_format($contribution->getInstallCount()); ?></td>
    </tr>
</table>

<?php if($contribution->contributor_id == UserHelper::getId()): ?>
<p>
    <a href="<?php echo base_url(); ?>packages/<?php echo $contribution->name; ?>/edit">
        Edit Details
    </a>
</p>
<?php endif; ?>

<?php if(UserHelper::getId() == $contribution->contributor_id): ?>
	<div class="form-wrapper clearfix">
		<form action="<?php echo base_url(); ?>versions/add" method="post">

            <h5>Author: Add a new version (via repository tag): <br /></h5>
	        <p>
            <small>
	            After you add this, the spark will be processed on our end. <br/>
	            The string you enter below should correspond to a tag in your
	            source repository. If the tag isn't valid, we'll pull the latest.<br/>
                <strong>Remember to update the version string in spark.info!</strong><br/>
	        </small>
	        </p>
	        <input type="text" name="tag" />
	        <input type="hidden" name="spark_id" value="<?php echo $contribution->id; ?>" />
	        <input class="fun-button" type="submit" name="submit" value="Create From Tag" />
	    </form>
	</div>
<p></p>
<?php endif; ?>

<?php if(count($versions_unverified)): ?>
<p class="message">
    The system is currently processing a new version of this spark (repository tag <?php echo $versions_unverified[0]->tag; ?>).
</p>
<?php endif; ?>

<h2>Get the Latest</h2>
<ul>
    <?php if(count($versions) > 0): $count = 0; ?>
        <?php $latest_verion = $version = $versions[0]; ?>
            <li class="no-border">
               <?php echo $version->version; ?> (latest/HEAD)
               <?php /*
               <a href="<?php echo base_url(); ?>packages/<?php echo $contribution->name; ?>/versions/<?php echo $version->version; ?>/spec.json">
                 [spec]
               </a>
                */ ?>
                <?php if($is_author): ?>
                    <?php if(!$version->is_deactivated): ?>
                    <a href="#" onclick="return yank('<?php echo $version->version; ?>');">
                      [disable version]
                    </a>
                    <?php else: ?>
                    <a href="#" onclick="return unyank('<?php echo $version->version; ?>');">
                      [enable version]
                    </a>
                    <?php endif; ?>
                <?php endif; ?>
                <?php if(UtilityHelper::isWindows()): ?>
                <code>
                    <?php echo config_item('install_prototype_win'); ?> -v<?php echo $version->version; ?> <?php echo $contribution->name; ?>
                </code>
               <?php else: ?>
                <code>
                    <?php echo config_item('install_prototype_nix'); ?> -v<?php echo $version->version; ?> <?php echo $contribution->name; ?>
                </code>
               <?php endif; ?>
                Or download this version manually:
                <a href="<?php echo $version->archive_url; ?>" class="download">Get <?php echo basename($version->archive_url); ?></a>
            </li>
    <?php else: ?>
            <li class="last no-border" style="text-align:left; margin-bottom:15px">There isn't a latest version.</li>
    <?php endif; ?>
</ul>

<?php if(count($versions) > 0): ?>
    <h2>How-To</h2>
    <div id="documentation" class="markdown">
        <?php
            if(strlen($versions[0]->readme_html))
                echo $versions[0]->readme_html;
            else
                echo "There is no documentation (readme) for this release.";
        ?>
    </div>
<?php endif; ?>

<h2>Older Versions</h2>
<ul>
    <?php if(count($versions) > 1): $versions = array_slice($versions, 1); ?>
        <?php foreach($versions as $version): ?>
            <li class="no-border">
               <?php echo $version->version; ?>
                <?php if($is_author): ?>
                    <?php if(!$version->is_deactivated): ?>
                    <a href="#" onclick="return yank('<?php echo $version->version; ?>');">
                      [disable version]
                    </a>
                    <?php else: ?>
                    <a href="#" onclick="return unyank('<?php echo $version->version; ?>');">
                      [enable version]
                    </a>
                    <?php endif; ?>
                <?php endif; ?>
                <?php if(UtilityHelper::isWindows()): ?>
                <code>
                    <?php echo config_item('install_prototype_win'); ?> -v<?php echo $version->version; ?> <?php echo $contribution->name; ?>
                </code>
               <?php else: ?>
                <code>
                    <?php echo config_item('install_prototype_nix'); ?> -v<?php echo $version->version; ?> <?php echo $contribution->name; ?>
                </code>
               <?php endif; ?>
                Or download this version manually:
                <a href="<?php echo $version->archive_url; ?>" class="download">Get <?php echo basename($version->archive_url); ?></a>
            </li>
        <?php $count++; endforeach; ?>
    <?php else: ?>
            <li class="last no-border" style="text-align:left; margin-bottom:15px">There are no older versions.</li>
    <?php endif; ?>
</ul>

<?php if(count($forks) > 0) : ?>
	<h2>Other Versions</h2>
	<ul>
		<?php 
			foreach($forks AS $key => $row) : 
				if($row->id == $contribution->id) { continue; }
		?>
		<li class="no-border">
			<a href="<?php echo site_url("/packages/$row->name/versions/HEAD/show"); ?>">
				<?php echo $row->name; ?></a> - <?php echo $row->summary; ?>
			</li>
		<?php endforeach; ?>
	</ul>
	
	<?php if($contribution->fork_id > 0) : ?>
	<p>Above are alternative versions of <?php echo $contribution->name; ?>.</p>
	<?php else : ?>
	<p>Above are other forks of <?php echo $contribution->name; ?>.</p>
	<?php endif; ?>
<?php endif; ?>

<h2>Comments</h2>
<?php UtilityHelper::loadDisqus(); ?>

<script type="text/javascript">
    function yank(version)
    {
        if(confirm('Are you sure you want to disable this version? You should only do this if the release is unusable. Developers may depend on it!'))
        {
            window.location = '<?php echo base_url(); ?>packages/<?php echo $contribution->name; ?>/versions/' + version + '/disable';
        }

        return false;
    }

    function unyank(version)
    {
        if(confirm('Are you sure you re-enable version? You obviously thought it was crap at some point.'))
        {
            window.location = '<?php echo base_url(); ?>packages/<?php echo $contribution->name; ?>/versions/' + version + '/enable';
        }

        return false;
    }
</script>

<?php $this->load->view('global/_new_footer.php'); ?>
