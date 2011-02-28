<?php $this->load->view('global/_new_header.php'); ?>

<h2>What is Sparks?</h2>

<iframe title="YouTube video player" width="730" height="445" src="http://www.youtube.com/embed/S1tnV2uX0-Q" frameborder="0" allowfullscreen style="margin-bottom: 25px;"></iframe>

<h2>Making Code Easy to Find, Create, and Distribute</h2>
<p>Sparks is a <strong>package management system for Codeigniter</strong> that will allow you install high-quality libraries into your applications instantly.</p>
<p>Imagine that you wanted to find an 'Auth' for an app you're writing. You're sure there must be something for CodeIgniter already written by another member of the community. You check the Sparks repository, and sure enough, there's a featured spark for auth on the front page.</p>
<div class="code"><?php echo config_item('install_prototype_nix'); ?> auth</div>
<p>Or</p>
<div class="code"><?php echo config_item('install_prototype_win'); ?> auth</div>
<p>How <em>easy</em> was that? You should really <a href="/install">install sparks now</a>, don't you think?</p>

<?php $this->load->view('global/_new_footer.php'); ?>
