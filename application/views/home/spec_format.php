<?php $this->load->view('global/_new_header.php', array('title' => 'Writing Your Own')); ?>

<h2>The Spark Spec Format</h2>

<p><em>Specs are required part of submitted sparks as of the beta launch.</em></p>

<p>
    At the root of every spark is a spec file named <em>spark.info</em>.
    This spec file provides information
    to the GetSparks contribution processor. It has information about compatibility
    and dependencies.
</p>

<h3>Spec Format</h3>

<p>
    An example of a spec is specified below:
</p>

<pre>
# This is the spark-sdk specification. It's in a magical format without a name.
#  Use this format while developing your own sparks!

# This is the spark name. This should be the registered name of the spark.
#  It's only used for informational purpouses.
name: spark-sdk

# This is the current version of this spark. All sparks should be in
#  x.x.x format. Validation will fail otherwise. This is the version
#  that will appear on the website.
version: 1.0.0

# This is the version of CodeIgniter this spark is compatible up to. It should
#  be in x.x.x format
compatibility: 2.0.2

# These are other sparks which this spark needs in order to work correctly.
#  Dependencies should be in NAME: VERSION format, where NAME is an existing
#  spark name, and VERSION is a version in x.x.x format.
dependencies:
  spark-1: 1.0.0
  spark-2: 1.0.0

# These are tags to associate your spark with
tags: ["some", "tags", "here"]
</pre>

<p>
    This is considered a complete spec, although only the name, version, and
    compatibility fields are required. More information on the format of a
    spark is available on the <a href="<?php echo base_url(); ?>/spec-format">spec format page</a>.
</p>

<?php $this->load->view('global/_new_footer.php'); ?>