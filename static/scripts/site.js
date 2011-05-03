$(document).ready(function() {

	$.fn.increment = function() {
		var val = parseInt($(this).html(), 10);
		$(this).html(val + 1);
	};

	$.fn.decrement = function() {
		var val = parseInt($(this).html(), 10);
		$(this).html(val < 1 ? 0 : val - 1);
	};

	$('a.rating').click(function(e) {

		e.preventDefault();
		$this = $(this);

		// If this is already selected, return
		if ($this.hasClass('selected')) return;

		$.ajax({
			type: 'post',
			url: '/ajax/packages/' + $(this).parents('.ratings').data('spark_name') + '/rate',
			data: {
				rating: $(this).data('rating')
			},
            // dataType: 'json',
            success: function() {
			    // change counts
				var $selected = $('a.rating.selected');
				$selected.removeClass('selected');
				$selected.children('span').decrement();
				// set selected
				$this.addClass('selected');
				$this.children('span').increment();
			},
		    error: function(e, m) {
				// Error - reload the page
				window.location.reload();
			}
		});

	});

});
