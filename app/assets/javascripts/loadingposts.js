var recent_page = 1;

// ajax call function to fetch recent posts
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

// When DOM is ready
$(function(){
	fetch_posts($('#recent_posts'));

	// Add click to a DIV
	$("#recent_load_more").live('click', function(e){
		e.preventDefault();
		fetch_posts($('#recent_posts'));
	});
});

