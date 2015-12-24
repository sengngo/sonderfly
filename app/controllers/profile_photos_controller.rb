class ProfilePhotosController < ApplicationController
	def create
		@user = User.find(params[:user_id])
		@profile_photo = @post.profile_photo .create(profile_photo_params.merge(:user => current_user))
	end

	private

	def profile_photo_params
		params.require(:post_photo).permit(:caption)
	end
end
