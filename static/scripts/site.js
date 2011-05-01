$(document).ready(function() {

	$('#package_ratings .ratings .rating').click(function(e) {

		$('#package_ratings .ratings .rating.selected').removeClass('selected');
		$(this).addClass('selected');

		e.preventDefault();

	});

});
