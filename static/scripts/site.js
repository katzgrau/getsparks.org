$(document).ready(function() {

	$.fn.increment = function(howMuch) {
		var val = parseInt($(this).html(), 10);
		$(this).html(val + howMuch);
	};

	$.fn.decrement = function(howMuch) {
		var val = parseInt($(this).html(), 10);
		$(this).html(val - howMuch);
	};

	$('#package_ratings a.rating').click(function(e) {

		$(this).children('span').increment(1);

		$('#package_ratings a.rating.selected').removeClass('selected');
		$(this).addClass('selected');

		e.preventDefault();

	});

});
