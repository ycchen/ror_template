$(function(){
	$('.nav li').hover(function(){
		$(this)
			.find('ul')
			.stop(true, true)
			.slideDown('fast');
	}, function(){
		$(this)
			.find('ul')
			.stop(true, true)
			.fadeOut('fast');
	});
});