class Api::PostsController < Api::ApiController
	
	def index
		posts= Post.all
		render :json => posts
	end

	def create
	    type = params[:type] || params[:post][:type]
	    post = current_user.relation_for(type).new(params[:post])
		
		if post.save
			render :status => 200, :json => true
		else
		 	error(406, obj.errors.full_message)
		end
	end

end