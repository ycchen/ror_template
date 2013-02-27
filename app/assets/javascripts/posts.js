
function post_added(){
	success_notify('Your post has been added')
}

function render_posts(posts) {
	// alert('from render_posts');
}

function render_post(post){
	// alert('from render_post');
}


function fetch_recent_posts(div){
	// div.append("<%= escape_javascript(render(:partial => 'post', :object => @posts))%>");
}

// function fetch_posts(div, page){
	
// }

$(function(){
	// fetch_posts($('#user_posts'));
	fetch_recent_posts($('#recent_posts'));
});
