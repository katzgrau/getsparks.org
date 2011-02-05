<?php $this->load->view('global/_header.php'); ?>

<h2><?php echo $contribution->display_name; ?> (<?php echo $contribution->name; ?>)</h2>

<p>
    <?php echo $contribution->description; ?>
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
        <td>Website</td>
        <td>: <a target="_blank" href="<?php echo $contributor->website; ?>"><?php echo $contributor->website; ?></a></td>
    </tr>
    <tr>
        <td>Repository Type</td>
        <td>: <?php echo $contribution->repository_type; ?></td>
    </tr>
</table>

<h3>Versions</h3>
<ul>
    <?php if(count($versions) > 0): $count = 0; ?>
        <?php foreach($versions as $version): ?>
            <li>
               <?php echo $version->version; ?><?php if($count == 0) echo '/HEAD ';?>
               <a href="<?php echo base_url(); ?>packages/<?php echo $contribution->name; ?>/versions/<?php echo $version->version; ?>/spec.json">
                 spec
               </a>
               <a href="<?php echo $contribution->base_location; ?>">
                 repository
               </a>
                <code>
                    $ tools/spark install -v<?php echo $version->version; ?> <?php echo $contribution->name; ?>
                </code>
            </li>
        <?php $count++; endforeach; ?>
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

<?php $this->load->view('global/_footer.php'); ?>