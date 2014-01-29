class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def show
		id = params.require(:id)
  	@category = Category.find(id)
  	@products = @category.products
	end

end
