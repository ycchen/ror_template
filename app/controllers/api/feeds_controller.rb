module Api
	class FeedsController < ApplicationController
		respond_to :json
		
		def index
			posts = Post.all
			# posts = Post.all(:include => :user).to_json(:include => :user)
			# respond_with Post.all
			respond_with posts
		end

	end
end