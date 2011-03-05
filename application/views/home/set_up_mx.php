<?php $this->load->view('global/_new_header.php', array('title' => 'Setting Up with Modular Extensions')); ?>

<h2>Guide #1&frac12;: Setting Up with Modular Extensions</h2>

<p>
    A popular extension to the CodeIgniter framework is the third-party
    <a href="https://bitbucket.org/wiredesignz/codeigniter-modular-extensions-hmvc/wiki/Home">Modular Extensions system</a>,
    which allows for HMVC in CodeIgniter. There are some slight differences
    in the setup process when using Sparks with this system.
</p>

<p>
    These modifications were provided by <a href="http://twitter.com/downey_sean">Sean Downey</a>.
</p>

<ol>
    <li>
        <p>
            Install sparks via the "<a href="<?php echo base_url(); ?>install#normal">Normal Installation</a>" (not the one-liner) in Option 1,
            or the <a href="<?php echo base_url(); ?>install#option-2">no-Spark-Manager method</a> (Option 2) on the <a href="<?php echo base_url(); ?>install#option-1">setup page</a>.
            <strong>Skip the steps involving the installation of MY_Loader.php</strong>
        </p>
    </li>
    <li>
        <p>Grab the latest version of Modular Extensions at
            <a href="https://bitbucket.org/wiredesignz/codeigniter-modular-extensions-hmvc/src">https://bitbucket.org/wiredesignz/codeigniter-modular-extensions-hmvc/src</a>
            if you don't already have it, and install it.
        </p>
    </li>
    <li>
        <p>
            Copy the contents of this modified Loader class —
            <a href="<?php echo base_url(); ?>static/install/mx/Loader.php.txt"><?php echo base_url(); ?>static/install/mx/Loader.php.txt</a>
            — into application/third_party/MX/Loader.php
        </p>
    </li>
    <li>
        <p>
            Copy the contents of this modified Modules class —
            <a href="<?php echo base_url(); ?>static/install/mx/Modules.php.txt"><?php echo base_url(); ?>static/install/mx/Modules.php.txt</a>
            — into application/third_party/MX/Modules.php
        </p>
    </li>
</ol>

<p>You can now continue and install sparks via the instructions on:
    <a href="<?php echo base_url(); ?>get-sparks">Guide #2: Installing Sparks</a>
</p>

<?php $this->load->view('global/_new_footer.php'); ?>