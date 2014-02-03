class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def show
		id = params.require(:id)
  	@product = Product.find(id)
  	@categories = @product.categories
	end

	def new
		@categories = Category.all
		render :new
	end

	def create
		product = Product.new(params.require(:product).permit(:name, :price))
		product.save
		params[:categories].each do |category_id|
				c = Category.find(category_id)
				product.categories << c
		end 
		redirect_to product_path(product)
	end

	def edit
		id = params.require(:id)
		@product = Product.find(id)
		@categories = Category.all
		render :edit
	end

	def update
		product = Product.find(params[:id])
		product.name = params[:product][:name]
		product.price = params[:product][:price]
		product.save
		
		product.categories.clear

		params[:categories].each do |category_id|
				c = Category.find(category_id)
				product.categories << c
		end 
		redirect_to product_path(product)
	end

	def destroy
		product = Product.find(params[:id])
		product.categories.clear
		Product.destroy(params[:id])

		redirect_to products_path

	end

end
