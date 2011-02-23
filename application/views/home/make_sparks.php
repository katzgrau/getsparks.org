<?php $this->load->view('global/_new_header.php', array('title' => 'Writing Your Own')); ?>

<h2>Guide #3: Making Sparks</h2>

<p>
    Contributing code and being recognized for awesome and useful code: It's what we love about
    being open-source developers. Learn how to make and distribute your own sparks.
</p>

<p>
    <strong>Note:</strong> This is a fairly wordy document, but it will clearly
    explain how a spark is structured, how to build one, and how to submit it.
    If you think we've missed something, 
    <a href="mailto:<?php echo config_item('support_email'); ?>">let us know!</a>
</p>
<h3>How Contributing Works</h3>

<p>
    GetSparks.org is <strong>entirely backed by external repositories.</strong>
    That means we do not host your projects. Your project can live happily on your
    <a href="http://github.com" target="_blank">GitHub</a> or <a href="http://bitbucket.com" target="_blank">BitBucket</a> account, or personal git or mercurial server. When you
    register a spark at GetSparks, you simply point us to your repository.
</p>

<p>
    That's awesome for a few different reasons:
</p>

<ol>
    <li>All your cool open-source projects can remain in one place.</li>
    <li>
        You'll get the fun of wikis, issue trackers, and watchers automatically
        if you use GitHub or BitBucket.
    </li>
    <li>
        You aren't forced to use some antiquated versioning system in order to contribute. GetSparks
        can easily support new VCSs over time.
    </li>
    <li>
        We don't have to worry about bandwidth issues.
    </li>
</ol>

<p>
    After that, you register new versions of your spark on GetSparks by pointing
    us towards an identically named tag in your repository. That is, if you
    create tag '1.0' in your repo, just add a '1.0' version to your project in
    GetSparks. In a few minutes, it'll be available to the world.
</p>

<h3>What A Spark Looks Like</h3>

<p>
    For now, a Spark is simply a CodeIgniter package that is nested inside the 
    sparks/ directory. So when they are installed, sparks look like:
</p>

<p>
    Another spark that might do something more advanced, might have configs, helpers,
    libraries, and models. We'll call this 'other-spark', which might look like:
</p>

<pre>
/sparks
..../example-spark
......../config
......../libraries
..../other-spark
......../config
......../libraries
......../helpers
......../models
</pre>

<p>
    When you create a spark project on github or bitbucket, all you have to do
    is set up the root of your project to looks like:
</p>

<pre>
......../config
......../libraries
......../helpers
......../models
</pre>

<p>
    We'll take care of the rest. Name your project appropriately &minus; You 
    might want to register the spark before creating a github project since
    GetSparks project names must be unique.
</p>

<h3>Writing A Test Spark</h3>

<p>
    In this section we'll go through creating a very basic spark that pulls
    tweets from Twitter for a given user. If you haven't already, set up
    the spark system in your application: <a href="<?php echo base_url() . 'set-up'; ?>">Setting Up</a>.
</p>

<ol>
    <li>Create a directory inside your sparks folder named 'birdseed'.</li>
    <li>
        Inside birdseed, create a 'config' folder, and also, create a
        'helpers' folder.
    </li>
    <li>
        Create a file named 'birdseed.php' and 'autoload.php' inside birdseed/config. Note that
        you should generally name your config files the same as your spark.
    </li>
    <li>
        Inside birdseed/config/birdseed.php, place this, and save the file:
<pre>
&lt;?php

# The base URL for API calls to twitter
$config['twitter_api_base_url'] = 'http://api.twitter.com/1/';
</pre>
    </li>
    <li>
        Inside birdseed/config/autoload.php, place this, and save the file:
<pre>
&lt;?php

# Load the birdseed config when the spark is loaded
$autoload['config'] = array('birdseed');

# Load the birdseed helper when the spark is loaded
$autoload['helper'] = array('birdseed');
</pre>
        <p>
            <strong>Note:</strong> Autoloading components of your spark is optional,
            but we do it here to make this tutorial more simple. Generally, you
            should only autoload what you need to maintain the overall speediness
            of CodeIgniter.
        </p>
    </li>
    <li>
        Create the file 'helpers/birdseed_helper.php'. Inside it, place this, and
        save:
        <pre>
&lt;?php

/**
 * This function grabs a user's tweets from twitter. It's not a
 *  bad idea to cache the output of this call!
 * @param  string $username The Twitter username to grab
 * @param  int    $n        The number of tweets to pull down
 * @return array            An array of tweets
*/
function birdseed_fetch($username, $n = 10)
{
    $base_url = config_item('twitter_api_base_url');
    $call_url = $base_url
                . 'statuses/user_timeline.xml?screen_name='
                . $username
                . '&count='
                . $n;

    $tweets = json_decode(file_get_contents($call_url));

    if($tweets === FALSE)
    {
        # We didn't get a valid response back. Maybe the innerwebs are down.
        return FALSE;
    }

    $return = array();

    foreach($tweets->user->tweets as $tweet)
    {
        $return[] = $tweet;
    }

    return $tweets;
}
</pre>
    </li>
    <li>
        Now you're ready to try your new spark. From somewhere inside your
        CodeIgniter Application, try:
<pre>
$this->load->spark('birdseed');

# Grab _kennyk_'s tweets
$tweets = birdeseed_fetch('_kennyk_', 5);
print_r($tweets);
</pre>
    </li>
    <li>
        Did that work alright? Cool! If not, <a href="mailto:<?php echo config_item('support_email'); ?>">let us know!</a>
    </li>
</ol>

<h3>Contributing</h3>

<p>This section will go through the process of contributing a spark.</p>


<h3>Best Practices</h3>

<h3>Tips for Advanced Users</h3>

<?php $this->load->view('global/_new_footer.php'); ?>