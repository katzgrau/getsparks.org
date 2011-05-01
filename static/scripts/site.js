$(document).ready(function() {

	$('#package_ratings .ratings .rating').click(function() {

		$('#package_ratings .ratings .rating.selected').removeClass('selected');
		$(this).addClass('selected');

	});

});
