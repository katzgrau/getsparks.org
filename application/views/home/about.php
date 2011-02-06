<?php $this->load->view('global/_header.php', array('title' => 'About Sparks')); ?>

<p class="message">
    CodeIgniter sparks is an upcoming framework feature that is <em>still being
        actively developed.</em> It's in an alpha state. <strong>We're excited about it</strong>.
    Follow <a href="http://twitter.com/_kennyk_">@_kennyk_</a> and <a href="http://twitter.com/seejohnrun">@seejohnrun</a> for updates.
</p>

<h2>Why Sparks?</h2>

<p>
    <strong>Because great code should be easy to find and reuse!</strong>
</p>

<p>
    <strong><span class="meaning">Sparks is a package management system for CodeIgniter</span></strong> that will allow you install
    high-quality libraries into your applications instantly.
</p>

<p>
    Imagine that you wanted to find an
    '<a href="http://codeigniter.uservoice.com/forums/40508-codeigniter-reactor/suggestions/1265743-authentication-class">Auth</a>'
    for an app you're writing. You're sure there must be something for CodeIgniter already written by another member of the community.
    You check the Sparks repository, and sure enough, there's a featured spark for auth on the front page. Now just:
</p>

<code>
    $ tools/spark install auth
</code>

Or

<code>
    C:\app> php tools/spark install auth
</code>

<p>
    And now you have it. It was <em>that</em> easy.
</p>

<p>
    <strong>Very soon, this will be a reality</strong>. <a href="#">See for yourself</a>.
</p>

<?php $this->load->view('global/_footer.php'); ?>