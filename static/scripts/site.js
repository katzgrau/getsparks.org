$(document).ready(function() {

	$('#package_ratings a.rating').click(function(e) {

		$('#package_ratings a.rating.selected').removeClass('selected');
		$(this).addClass('selected');

		e.preventDefault();

	});

});
