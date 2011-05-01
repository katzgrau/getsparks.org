$(document).ready(function() {

	$('#package_ratings .ratings .rating').click(function() {

		$('#package_ratings .ratings .rating.selected').removeClass('selected');
		$(this).addClass('selected');

	});

	$('#package_ratings .ratings .rating').hover(function() {
		$(this).addClass('maybe');
	}, function() {
		$(this).removeClass('maybe');
	});

});
