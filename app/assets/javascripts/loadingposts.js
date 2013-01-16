var recent_page = 1;

function fetch_posts(div){
	$.ajax({
		url: "/home/recentposts",
		cache: false,
		success: function(html){
			if (recent_page ==1){
				div.html(html);
			}else{
				div.append(html);	
			}

			recent_page++;
		}
	});// end of .ajax calls
}

$(function(){
	fetch_posts($('#recent_posts'));

	$("#recent_load_more").live('click', function(e){
		e.preventDefault();
		fetch_posts($('#recent_posts'));
	});
});

