class UsersController < ApplicationController
	before_action :authenticate_user!

  def dashboard
  	@user = User.find(current_user.id)
  	@posts = current_user.posts
  end
end
