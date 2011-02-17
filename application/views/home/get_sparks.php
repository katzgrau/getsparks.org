<?php $this->load->view('global/_header.php', array('title' => 'How to Write a Spark')); ?>

<h2>Step 2. Installing Sparks</h2>

<p>
    This document will explain how to install sparks with both the spark manager <em>and</em>
    manually.
</p>

<h3>Installing Sparks with the Spark Manager</h3>

<p>
    In this example, we'll install the 'spark-example' spark.
</p>

<p>
    Navigate to the root of your CodeIgniter application where you previously
    installed sparks. On OSX or Linux, type:
</p>

<code>
    <?php echo config_item('install_prototype_nix'); ?> spark-example
</code>

On Windows, type:

<code>
    <?php echo config_item('install_prototype_win'); ?> spark-example
</code>

You should see:

<pre>
[ SPARK ]  Retrieving spark detail from getsparks.org
[ SPARK ]  From Downtown! Retrieving spark from Mercurial repository at https://github.com/katzgrau/example-spark
[ SPARK ]  Installing spark
[ SPARK ]  Spark installed to ./sparks/example-spark/1.0 - You're on fire!
</pre>

Now your spark is installed! In your application, try:

<pre>
$this->spark->load('example-spark/1.0');      # We specify the version for now. This might change
$this->example_spark->printHello();           # echo's "Hello from the example spark!"
</pre>

<h3>Installing Sparks Manually</h3>

<p>
    Find the package you want to install in the repository, perhaps via <a href="#">search</a>.
    For this example, we'll use 'example-spark', whose page can be found here:
    <a target="_blank" href="<?php echo base_url(); ?>packages/example-spark/show">
        <?php echo base_url(); ?>packages/example-spark/show
    </a>
</p>


<?php $this->load->view('global/_footer.php'); ?>