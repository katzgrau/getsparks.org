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
    is set up the root of your project to look like:
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
                . 'statuses/user_timeline.json?screen_name='
                . $username
                . '&count='
                . $n;

    $tweets = json_decode(file_get_contents($call_url));

    if($tweets === FALSE)
    {
        # We didn't get a valid response back. Maybe the innerwebs are down.
        return array();
    }

    return $tweets;
}
</pre>
    </li>
    <li>
        Inside birdseed/spark.info, place this, and save the file:
<pre>
# This is the spark-sdk specification. It's in a magical format called YAML.
#  Use this format while developing your own sparks!

# This is the spark name. This should be the registered name of the spark.
# It is here for informational purposes only.
name: birdseed

# This is the current version of this spark. All sparks should be in
#  x.x.x format. Validation will fail otherwise.
version: 0.0.1

# This is the version of CodeIgniter this spark is compatible up to. It should
#  be in x.x.x format
compatibility: 2.0.2

# There are no dependencies now, but when there are, uncomment below.
#dependencies:
#  some-spark-1: 1.0.0
#  some-other-spark-2: 1.0.0
</pre>
<p>This is important for when you want to contribute your spark.</p>
    </li>
    <li>
        Now you're ready to try your new spark. From somewhere inside your
        CodeIgniter Application, try:
<pre>
$this->load->spark('birdseed');

# Grab _kennyk_'s tweets
$tweets = birdseed_fetch('_kennyk_', 5);
print_r($tweets);
</pre>
        <p>You could then try something like this in your view:</p>
<pre>
&lt;?php

    # Load the spark and get some tweets
    $this->load->spark('birdseed');
    $tweets = birdseed_fetch('_kennyk_', 5);

?&gt;
...
&lt;ul&gt;
    &lt;?php foreach($tweets as $tweet): ?&gt;
        &lt;li&gt;&lt;?php echo $tweet->text; ?&gt;&lt;/li&gt;
    &lt;?php endforeach; ?&gt;
&lt;/ul&gt;
</pre>
    </li>
    <li>
        Did that work alright? Cool! If not, <a href="mailto:<?php echo config_item('support_email'); ?>">let us know!</a>
    </li>
</ol>

<h3>Contributing</h3>

<p>
    So now you have a spark that works, and you want to contribute it to the
    rest of the CodeIgniter world. Awesome! We're going to assume here that:
</p>

<ol>
    <li>
        You have an account at GitHub or BitBucket, or you run your own
        publicly-accessible git or mercurial server. If you don't have one of
        these, go get one and join the open-source world!
    </li>
    <li>
        You know how to set up a project in your repository.
    </li>
    <li>
        You know what a "Clone URL" is, and how to get a publicly-readable
        clone URL from your repository.
    </li>
</ol>

<p>Here's what you need to do:</p>

<ol>
    <li>
        <p>
        If you haven't already, copy your spark's files into your project
        directory.
        </p>
    </li>
    <li>
        Optionally, you may add a readme file at the root of your
        spark. Readme files are expected to be in
        <a target="_blank" href="http://daringfireball.net/projects/markdown/syntax">
            markdown format</a>. This readme
        will be parsed and posted with your spark when it goes live.
    </li>
    <li>
        Push the files to your repository via:
<pre>
$ hg add .
$ hg commit -m "My sweet new spark - first commit"
$ hg push
</pre>
        or
<pre>
$ git add .
$ git commit -m "My sweet new spark - first commit"
$ git push
</pre>
    </li>
    <li>
        Create and push a new tag. This should be something sane, like a version number.
<pre>
$ hg tag '1.0'
$ hg commit -m "My neato releaso ;)"
$ hg push
</pre>
        Or
<pre>
$ git tag '1.0'
$ git push --tags
</pre>
    </li>
    <li>
        <p>
            If you don't already have an account as GetSparks.org,
            <a href="<?php echo base_url(); ?>register">get one</a> and log in.
        </p>
    </li>
    <li>
        <p>
            Head over the <a href="<?php echo base_url(); ?>packages/add">spark contribution page</a>, fill out the details, and
            create your entry. <strong>Remember</strong>, for "Clone URL," use the
            publicly-accessible one. On GitHub, this is called your "Read Only" clone
            URL.
        </p>
    </li>
    <li>
        <p>
            You should now be on your project's page. You'll notice a form that
            says "Add a New Version." This is where you enter the tag that you
            created in step 3. Enter "1.0" and click "Create from Tag"
        </p>
        <p>
            Your spark entry will be created, but marked as "unverified".
            Over the next few minutes, the GetSparks daemons will check out
            and validate your spark.
        </p>
    </li>
    <li>
        <p>
            If your spark looks fine, it'll be marked
            as verified. If there was some sort of error (like an invalid
            clone URL), the version will be removed and you'll receive an
            automated email explaining why. At this point, you should try to
            fix the errors and re-register your tag on GetSparks.
        </p>
    </li>
    <li>
        <p>
            Once your spark has been verified, version information and a download-able
            zip will appear on the page. If you have the spark-manager installed
            in one of your applications, you can open up a terminal and navigate to your project.
            Try:
            <code>
                $ php tools\spark install [your-spark-name]
            </code>
            Did it work? Sweet! Go tell your friends. If not, and you think these 
            directions are faulty in some way, <a href="mailto:<?php echo config_item('support_email'); ?>">let us know!</a>
        </p>
    </li>
</ol>


<h3>Best Practices</h3>

<ol>
    <li>
        <p>
            <strong>Naming:</strong> Naming your spark so that it won't conflict with a user's existing
            libraries or sparks is a something you should absolutely do. This is especially
            important because of PHP's lack of namespacing in earlier, but still
            support versions (<5.3).
        </p>
        <p>
            If your spark involves a model that deals with users, you might
            be inclined to naming the class 'User'. Instead, prefix the name
            of the class with the name of the spark: Something like 'Birdseed_user'.
            Keep in mind, we stick to CodeIgniter's class and file naming conventions.
        </p>
        <p>
            <strong>Also:</strong> GetSparks currently only accepts letters,
            numbers, and underscores in spark names. If your spark only contains
            a single library, it might be an idea to name your library after
            the spark to keep things clear for the end user:
        </p>
<pre>
$this->load->spark('example_spark'); # Autoloader loads a library named 'example spark'
$this->example_spark->doSomethingCool();
</pre>
    </li>
    <li>
        <p>
            <strong>Documentation:</strong> Put your spark's documentation in a Readme file at the root of your spark.
            The GetSparks.org spark daemon will pull down any readme file at the root
            of your spark, and try to parse it as 
            <a target="_blank" href="http://daringfireball.net/projects/markdown/syntax">markdown</a>.
            This means it's compatible with GitHub and BitBucket's Readme format too.
        </p>
        <p>
            Writing your spark documentation this way will allow you to update
            your code and docs all in one place: your repo. How easy is that?
        </p>
    </li>
    <li>
        <p>
            <strong>Vendor Files:</strong> If you're writing a spark that uses
            third-party libraries, and you need a place to store them, just place
            them in a folder named 'vendor' inside your spark. Including those
            files via require_once etc, should be done by your spark intelligently.
        </p>
    </li>
    <li>
        <p>
            <strong>Autoloading:</strong> The spark system allows you to autoload
            anything you need in config/autoload.php. This can make things handy
            for the end-user, but don't forget one of the major philosophies of
            CodeIgniter: Only include what you need.
        </p>
    </li>
</ol>

<h3>Tips for Advanced Users</h3>

<ol>
    <li>
        <p>
            When working on a spark that you have as a project in github, it may be
            much easier to manage if you set up a symbolic link in the sparks
            directory to point to the spark project path.
        </p>
    </li>

</ol>

<?php $this->load->view('global/_new_footer.php'); ?>