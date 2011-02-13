<?php $this->load->view('global/_header.php', array('title' => 'How to Write a Spark')); ?>

<h4>Contents:</h4>

<ul>
    <li>
        <p>Option 1. Setting up the Spark Manager (<em>for user with PHP-CLI</em>)</p>
        <ul>
            <li>Quick Start Installation</li>
            <li>Normal Installation</li>
        </ul>
    </li>
    <li>Option 2. Setting up <em>without</em> the Spark Manager</li>
</ul>

<h2>Step 1. Setting Up</h2>

<p>
    This document will explain how to install the spark package manager. It will also explain how to
    prepare your CodeIgniter installation to use sparks without the package manager.
</p>

<h3>Option 1 (Recommended): Setting Up via the Spark Package Manager</h3>

<h4>Quick Start for OSX and Linux</h4>
<p>
    In order to use this quick start option, you should be using OSX or some flavor of linux.
</p>
<h5>Steps:</h5>
<ol>
    <li>Navigate to the root of your CodeIgniter application</li>
    <li>
        Copy and paste the following into the command line:<br />
        <code>
            php -r "$(curl -fsSL http://www.getsparks.org/static/install.php)"
        </code>
    </li>
    <li>
        Press enter. If all goes well, move on to <a href="<?php echo base_url(); ?>get-sparks">Step 2.</a> If not, try the normal installation below.
    </li>
</ol>

<h4>Normal Installation</h4>
<p>
    These instructions will work with all platforms:
</p>
<ol>
    <li>Download the sparks package: <a href="#">spark-manager.zip</a></li>
    <li>Extract the contents of the package into your CodeIgniter application root.</li>
    <li>Verify that in your root, you have a folder named 'tools'</li>
    <li>Download the Loader class extension: <a href="http://getsparks.org/static/MY_Loader.php.txt">http://getsparks.org/static/MY_Loader.php</a></li>
    <li>Move the Loader class to application/core/Loader.php</li>
    <li>If all goes well, continue to <a href="<?php echo base_url(); ?>get-sparks">Step 2.</a></li>
</ol>

<h3>Option 2. Setting up <em>without</em> the Spark Manager</h3>

<?php $this->load->view('global/_footer.php'); ?>