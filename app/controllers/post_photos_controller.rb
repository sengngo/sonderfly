class PostPhotosController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@post_photo = @post.post_photo.create(post_photo_params.merge(:user => current_user))
	end

	private

	def post_photo_params
		params.require(:post_photo).permit(:caption)
	end
end
