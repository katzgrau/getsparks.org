$(document).ready(function() {

	$('#package_ratings a.ratings .rating').click(function(e) {

		$('#package_ratings a.ratings .rating.selected').removeClass('selected');
		$(this).addClass('selected');

		e.preventDefault();

	});

});
