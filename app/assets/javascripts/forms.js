
function form_success(form){
	callback_function = form.find('#success_function').val();
	if(callback_function != undefined && window[callback_function] !== undefined){
		window[callback_function](form);
	}

	form_errors_clear(form);
	form[0].reset();
}

function form_errors(form, r){
	// errors = JSON.parse(r.responseText);
	// error_str = '';
	// for(idx in errors){
	// 	error_str +=  errors[idx];
	// }

	form_errors_clear(form);
	error_notify('Status ='+ r.status);
}

function form_errors_clear(form){
	form.find('.alert-error').hide();
}


$(function(){
	$('form[data-remote]').each(function(){
		$(this).bind('ajax:success', function(e){
			form_success($(this));
		});

		$(this).bind('ajax:error', function(evt, xhr){
			form_errors($(this), xhr)
		});
	});

});