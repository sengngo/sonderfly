class UsersController < ApplicationController
	before_action :authenticate_user!

  def dashboard
  	@user = User.find(current_user.id)
  	@posts = current_user.posts
  end

  def welcome
  	@user = User.find(current_user.id)
  	@posts = Post.last(6).reverse
  end

end
