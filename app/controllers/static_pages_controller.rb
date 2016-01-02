class StaticPagesController < ApplicationController
	def welcome 
		@posts = Post.last(5)
	end

	def about_sondefly
	end

	def guidelines
	end

	def terms_of_conditions
	end
end
