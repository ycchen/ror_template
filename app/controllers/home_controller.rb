class HomeController < ApplicationController
  # before_filter :authenticate_user!
  
  def index
  	@posts = Post.all
  	# if current_user
  	# 	# render :text => "Hello World"
  	# 	# redirect_to dashboard_path
  	# end
  end

  def recentposts
  	@posts = Post.all
  	render :layout => false
  end
  
end
