class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from ActiveRecord::RecordNotFound, :with => :render_not_found
  #rescue_from ActionController::RoutingError, :with => :render_not_found

  def routing_error
  	# raise ActionController::RoutingError.new(params[:path])
  	render_not_found
  end

  def render_not_found
  	flash[:notice] = 'The object you tried to access does not exist!'
  	# render template: "shared/404", status: :not_found
  	redirect_to root_path
  end
end
