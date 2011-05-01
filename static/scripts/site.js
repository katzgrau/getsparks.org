$(document).ready(function() {

	$.fn.increment = function() {
		var val = parseInt($(this).html(), 10);
		$(this).html(val + 1);
	};

	$.fn.decrement = function() {
		var val = parseInt($(this).html(), 10);
		$(this).html(val < 1 ? 0 : val - 1);
	};

	$('#package_ratings a.rating').click(function(e) {

		e.preventDefault();
		$this = $(this);
		if ($this.hasClass('selected')) return;

		var anySelected = !!$('#package_ratings a.rating.selected');

		$.ajax({
			type: 'get',
			url: '/',
            // dataType: 'json',
            success: function() {
			    // change counts
				var $selected = $('#package_ratings a.rating.selected');
				$selected.removeClass('selected');
				$selected.children('span').decrement();
				// set selected
				$this.addClass('selected');
				$this.children('span').increment();
			},
		    error: function(e, m) {
				// Error - reload the page
			    alert(m);
				window.location.reload();
			}
		});

	});

});
