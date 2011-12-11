<?php $this->load->view('global/_new_header.php', array('title' => 'Latest News')); ?>

<h2>GetSparks.org Community News</h2>

<p>
    <strong>News about sparks from blogs and other places. Want to announce
    something? Tweet <a href="http://twitter.com/getsparks">@getsparks</a>.</strong>
</p>

<table class="spark-table">
    <thead>
        <tr>
            <th>Story</th>
            <th>Source</th>
            <th>Posted</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach($items as $item): ?>
        <tr>
            <td><a href="<?php echo $item->url ?>"><?php echo $item->title ?></a></td>
            <td><?php echo parse_url($item->url, PHP_URL_HOST) ?></td>
            <td><?php echo date('F j, Y', strtotime($item->posted)); ?></td>
        </tr>
        <?php endforeach; ?>
    </tbody>
</table>

<?php $this->load->view('global/_new_footer.php'); ?>