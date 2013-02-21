class DashboardsController < ApplicationController
  def show
  	@post = current_user.posts.new
  end
end
