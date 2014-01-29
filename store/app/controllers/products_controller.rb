class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def show
		id = params.require(:id)
  	@product = Product.find(id)
  	@categories = @product.categories
	end

end
