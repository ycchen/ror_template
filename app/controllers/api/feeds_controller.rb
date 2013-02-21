class Api::FeedsController < Api::ApiController
	# class FeedsController < ApplicationController
		#respond_to :json
		
		def index
			posts = Post.all
			# posts = Post.all(:include => :user).to_json(:include => :user)
			# respond_with Post.all
			render :json => posts
		end

	# end
end