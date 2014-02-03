class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def show
		id = params.require(:id)
  	@category = Category.find(id)
  	@products = @category.products
	end

	def new
		@products = Product.all
		render :new
	end

	def edit
		id = params.require(:id)
		@category = Category.find(id)
		@products = Product.all
		render :edit
	end

	def create
		category = Category.new(params.require(:category).permit(:name))
		category.save
		params[:products].each do |product_id|
				p = Product.find(product_id)
				category.products << p
		end 
		redirect_to categories_path
	end

	def update
		category = Category.find(params[:id])
		category.name = params[:category][:name]
		category.save
		
		category.products.clear

		params[:products].each do |product_id|
				p = Product.find(product_id)
				category.products << p
		end 
		redirect_to category_path(category)
	end

	def destroy
		category = Category.find(params[:id])
		category.products.clear
		Category.destroy(params[:id])

		redirect_to categories_path

	end

end
