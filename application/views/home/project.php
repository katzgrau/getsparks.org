<?php $this->load->view('global/_new_header.php'); ?>

<h2>Project</h2>
	<!-- this should be in a db loop here -->
	<ul>
		<li class="clearfix">
			<a style="font-size:16px;" href="#">
				<img src="<?php echo Gravatar_helper::from_email('katzgrau@gmail.com', null, 40); ?>" />
			</a>
			<p>
				<a style="font-size:16px;" href="#">Kenny Katzgrau</a><br />
			</p>
			<br class="clear" />
			<p><em>Something here...</em></p>
		</li>
		<li class="clearfix">
			<a style="font-size:16px;" href="#">
				<img src="<?php echo Gravatar_helper::from_email('beau.frusetta@gmail.com', null, 40); ?>" />
			</a>
			<p>
				<a style="font-size:16px;" href="#">Beau Frusetta</a><br />
			</p>
			<br class="clear" />
			<p><em>Something here...</em></p>
		</li>
	</ul>

<?php $this->load->view('global/_new_footer.php'); ?>