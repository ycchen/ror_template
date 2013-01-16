

function fetch_recent_posts(div){
	// div.append("<%= escape_javascript(render(:partial => 'post', :object => @posts))%>");
}

$(function(){
	fetch_recent_posts($('#recent_posts'));
});
