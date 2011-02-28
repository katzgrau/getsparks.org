			</div>
			<br class="clear" />
		</div>
	</div>
	
	<div id="footer">
		<div class="wrapper">
			<p>
				<a href="/" title="Home">Home</a> | 
				<a href="/about" title="About">Why</a> | 
				<a href="/install" title="Install">Install</a> | 
				<a href="/register" title="Register">Register</a> | 
				<a href="/contact" title="Home">Contact</a>
			</p>
			<p>
				&copy; 2011 GetSparks.org Team
			</p>
		</div>
	</div>


<script type="text/javascript" charset="utf-8">
  var is_ssl = ("https:" == document.location.protocol);
  var asset_host = is_ssl ? "https://s3.amazonaws.com/getsatisfaction.com/" : "http://s3.amazonaws.com/getsatisfaction.com/";
  document.write(unescape("%3Cscript src='" + asset_host + "javascripts/feedback-v2.js' type='text/javascript'%3E%3C/script%3E"));
</script>

<script type="text/javascript" charset="utf-8">
  var feedback_widget_options = {};

  feedback_widget_options.display = "overlay";
  feedback_widget_options.company = "getsparks";
  feedback_widget_options.placement = "left";
  feedback_widget_options.color = "#222";
  feedback_widget_options.style = "idea";

  var feedback_widget = new GSFN.feedback_widget(feedback_widget_options);
</script>

    <?php if(config_item('is_production')): ?>
        <script type="text/javascript">

          var _gaq = _gaq || [];
          _gaq.push(['_setAccount', 'UA-21216385-1']);
          _gaq.push(['_trackPageview']);

          (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
          })();

        </script>
    <?php endif; ?>

</body>
</html>