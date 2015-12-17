class CategoriesController < ApplicationController
	def index
		@categories = Category.all
		@category = Category.new
	end

	def show
	end
end