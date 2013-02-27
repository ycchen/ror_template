class HomeController < ApplicationController
  # before_filter :authenticate_user!
  
  def index
  	# @posts = Post.all
  	# if current_user
  	# 	# render :text => "Hello World"
  	# 	# redirect_to dashboard_path
  	# end
    if current_user
      redirect_to dashboard_path
    end

  end

  # def profile
  #   @post = current_user.posts.new if current_user
  # end

  def recentposts
  	@posts = Post.order("created_at DESC")
  	render :layout => false
  end
  
end
