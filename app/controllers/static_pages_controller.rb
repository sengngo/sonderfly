class StaticPagesController < ApplicationController
	def welcome 
		@posts = Post.last(5)
	end
end
