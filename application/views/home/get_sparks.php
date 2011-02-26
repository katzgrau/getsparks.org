<?php $this->load->view('global/_new_header.php', array('title' => 'Installing Sparks')); ?>

<h2>Guide #2: Installing Sparks</h2>

<p>
    This document will explain how to install sparks with both the spark manager <em>and</em>
    manually.
</p>

<h3>Installing Sparks with the Spark Manager</h3>

<p>
    In this example, we'll install the 'example-spark'.
</p>

<p>
    Navigate to the root of your CodeIgniter application where you previously
    installed sparks. On OSX or Linux, type:
</p>

<code>
    <?php echo config_item('install_prototype_nix'); ?> example-spark
</code>

On Windows, type:

<code>
    <?php echo config_item('install_prototype_win'); ?> example-spark
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
$this->load->spark('example-spark/1.0');      # We specify the version for now. This might change
$this->example_spark->printHello();           # echo's "Hello from the example spark!"
</pre>

<p>Now you can install all the sparks you want. And if you feel like contributing your own, check out <a href="<?php echo base_url(); ?>make-sparks">Making Sparks</a>.</p>

<h3>Installing Sparks Manually</h3>

<p>
    Follow these directions for installing sparks without a script. This is most
     practical for developers on shared servers, where using the PHP would prove
     difficult or impossible.
</p>

<ol>
    <li>
        Browse or search for the package that you need. As an example, we'll use
        <a target="_blank" href="<?php echo base_url(); ?>packages/example-spark/show">
            example-spark
        </a>.
    </li>
    <li>
        Find the version you would like to download. This is most likely the top-listed
        version, which is the latest (sometimes denoted as 'HEAD').
    </li>
    <li>
        Click the link to "Get example-spark-v1.0.zip", and download it.
    </li>
    <li>
        Extract the contents of the zip to a folder inside the sparks/ directory at the base of
        your application. 
    </li>
    <li>
        You can name the folder anything you'd like, but <strong>example-spark</strong> should be sufficient.
        <em>You can additionally nest the spark into a second folder with its verison number (as the
        CLI script does), but that is entirely optional.</em>
    </li>
    <li>You should now have a directory structure similar to:
<pre>
/application
/system
/sparks
..../example-spark
......../config
......../libraries
</pre>
    </li>

<p>Now your spark is installed! Try this from within your application:</p>

<pre>
$this->load->spark('example-spark');   # Don't forget to add '/[version]' if you added a version folder!
$this->example_spark->printHello();    # echo's "Hello from the example spark!"
</pre>
</ol>

<p>Lookin' good? Want to contribute? Check out <a href="<?php echo base_url(); ?>make-sparks">Making Sparks</a>.</p>

<?php $this->load->view('global/_new_footer.php'); ?>