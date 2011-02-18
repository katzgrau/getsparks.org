<?php $this->load->view('global/_header.php'); ?>

<h2>Basic Information: <?php echo $contribution->name; ?></h2>
<p>
    <em><?php echo $contribution->summary; ?></em>
</p>

<table>
    <tr>
        <td>Contributor</td>
        <td>: <a href="<?php echo base_url(); ?>contributors/<?php echo $contributor->username; ?>/profile"><?php echo $contributor->username; ?></a></td>
    </tr>
    <tr>
        <td>Email</td>
        <td>: <?php echo $contributor->email; ?></td>
    </tr>
    <tr>
        <td>Author Website</td>
        <td>: <a target="_blank" href="<?php echo $contributor->website; ?>"><?php echo $contributor->website; ?></a></td>
    </tr>
    <?php if($contribution->website): ?>
    <tr>
        <td>Spark Website</td>
        <td>: <a target="_blank" href="<?php echo $contribution->website; ?>"><?php echo $contribution->website; ?></a></td>
    </tr>
    <?php endif; ?>
    <tr>
        <td>Repository Type</td>
        <td>: <?php echo $contribution->repository_type; ?></td>
    </tr>
</table>

<?php if($contribution->contributor_id == UserHelper::getId()): ?>
<p>
    <a href="<?php echo base_url(); ?>packages/<?php echo $contribution->name; ?>/edit">
        Edit Details
    </a>
</p>
<?php endif; ?>

<h2>Get the Latest</h2>
<ul>
    <?php if(count($versions) > 0): $count = 0; ?>
        <?php $latest_verion = $version = $versions[0]; ?>
            <li>
               <?php echo $version->version; ?> (latest/HEAD)
               <a href="<?php echo base_url(); ?>packages/<?php echo $contribution->name; ?>/versions/<?php echo $version->version; ?>/spec.json">
                 [spec]
               </a>
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
                <code>
                    <?php echo config_item('install_prototype_nix'); ?> -v<?php echo $version->version; ?> <?php echo $contribution->name; ?>
                </code>
                Or download this version manually:
                <a href="<?php echo $version->archive_url; ?>" class="download">Get <?php echo $contribution->name; ?>.zip</a>
            </li>
    <?php else: ?>
            <li>Nothin' to see here..</li>
    <?php endif; ?>
</ul>


<?php if(UserHelper::getId() == $contribution->contributor_id): ?>
    <form action="<?php echo base_url(); ?>versions/add" method="post">
        Add a new version: <input type="text" name="version" />
        <input type="hidden" name="spark_id" value="<?php echo $contribution->id; ?>" />
        <input type="submit" name="submit" value="Submit" />
    </form>
<?php endif; ?>

<?php if(count($versions) > 0): ?>
    <h2>Readme</h2>
    <div id="documentation" class="markdown">
    <?php echo parse_markdown($versions[0]->readme); ?>
    </div>
<?php endif; ?>

<h2>Older Versions</h2>
<ul>
    <?php if(count($versions) > 1): $versions = array_slice($versions, 1); ?>
        <?php foreach($versions as $version): ?>
            <li>
               <?php echo $version->version; ?>
               <a href="<?php echo base_url(); ?>packages/<?php echo $contribution->name; ?>/versions/<?php echo $version->version; ?>/spec.json">
                 [spec]
               </a>
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
                <code>
                    <?php echo config_item('install_prototype_nix'); ?> -v<?php echo $version->version; ?> <?php echo $contribution->name; ?>
                </code>
                Or download this version manually:
                <a href="<?php echo $version->archive_url; ?>" class="download">Get <?php echo $contribution->name; ?>-<?php echo $version->version; ?>.zip</a>
            </li>
        <?php $count++; endforeach; ?>
    <?php else: ?>
            <li>Nothin' to see here..</li>
    <?php endif; ?>
</ul>

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

<?php $this->load->view('global/_footer.php'); ?>