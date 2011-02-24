<?php $this->load->view('global/_new_header.php', array('title' => 'Setting Up')); ?>

<h2>Guide #1: Setting Up</h2>

<p>
    This document will explain how to install the spark package manager for <strong>CodeIgniter Reactor</strong>. It will also explain how to
    prepare your CodeIgniter installation to use sparks without the package manager. One day, this
    package manager might be integrated into the CodeIgniter framework to facilitate rapid community code reuse.
</p>

<!-- <h4>Contents:</h4> -->

<p>
	<a href="#option-1">Option 1. Setting up the Spark Manager (<em>for user with PHP-CLI</em>)</a><br />
	<a href="#option-2">Option 2. Setting up <em>without</em> the Spark Manager</a><br />
	<a href="#option-2">Option 3. Options 1 and 2 don't work</a>
</p>

<!--
<ul>
    <li>
        <p></p>
        <ul>
            <li><a href="#quick-start">Quick Start Installation</a></li>
            <li><a href="#normal">Normal Installation</a></li>
        </ul>
    </li>
    <li></li>
    <li></li>
</ul>
-->

<br />

<a name="option-1"></a>
<h3>Option 1 (Recommended): Setting Up via the Spark Package Manager</h3>

<p>
    For this option, it is required that you have the PHP Command-Line Interface (CLI) installed. 
    If you don't, you can get it for Windows, OSX,
    and Linux. You can also try <a href="#option-2">Option 2</a>.
</p>

<a name="quick-start"></a>
<h4>Quick Start for OSX and Linux</h4>
<p>
    In order to use this quick start option, you should be using OSX or some flavor of linux.
</p>

<h5>Steps:</h5>
<ol>
    <li>Via the shell, navigate to the root of your CodeIgniter application</li>
    <li>
        Copy and paste the following into the command line:<br />
        <code>
            php -r "$(curl -fsSL <?php echo base_url(); ?>go-sparks)"
        </code>
    </li>
    <li>
        Press enter. If all goes well, move on to <a href="<?php echo base_url(); ?>get-sparks">Step 2.</a> If not, try the normal installation below.
    </li>
</ol>

<a name="normal"></a>
<h4>Normal Installation</h4>
<p>
    These instructions will work with all platforms:
</p>
<ol>
    <li>Download the sparks package: <a href="<?php echo base_url(); ?>download">spark-manager.zip</a></li>
    <li>Extract the contents of the package into your CodeIgniter application root.</li>
    <li>Verify that in your root, you have a folder named 'tools'</li>
    <li>Download the Loader class extension: <a href="<?php echo config_item('sparks_loader_url'); ?>"><?php echo config_item('sparks_loader_url'); ?></a></li>
    <li>Move the Loader class to application/core/Loader.php</li>
    <li>If all goes well, continue to <a href="<?php echo base_url(); ?>get-sparks">Step 2.</a></li>
</ol>

<a name="option-2"></a>
<h3>Option 2. Setting up <em>without</em> the Spark Manager</h3>

<p>
    This option will allow you to use CodeIgniter sparks without using the PHP CLI &minus; something
    that isn't always available to developers.
</p>

<ol>
    <li>Navigate to the root of your CodeIgniter application (where the application and system directories reside by default)</li>
    <li>Create a directory named 'sparks'</li>
    <li>Create a new file: application/core/MY_Loader.php</li>
    <li>Copy the contents of <a href="<?php echo config_item('sparks_loader_url'); ?>"><?php echo config_item('sparks_loader_url'); ?></a> into the file created above.</li>
    <li>Verify that the 'subclass_prefix' setting in application/config/config.php is set to MY_ .</li>
    <li>If all goes well, continue to <a href="<?php echo base_url(); ?>get-sparks">Step 2.</a></li>
</ol>

<a name="option-3"></a>
<h3>Option 3. It Doesn't Go Well</h3>
<p>
    Send us an email at <a href="ohcrap@getsparks.org">ohcrap@getsparks.org</a>, and let us know. We'll try and get you up and running.
</p>
<?php $this->load->view('global/_new_footer.php'); ?>