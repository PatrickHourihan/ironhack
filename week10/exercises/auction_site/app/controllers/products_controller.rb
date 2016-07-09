class ProductsController < ApplicationController

	def new
		@user = User.find_by(params[:user_id])
		@product = @user.products.new
	end

	def index 
		@user = User.find_by(params[:user_id])
		@products = @user.products.all
	end

	def create
		@user = User.find_by(params[:user_id])
		@product = @user.products.new(
			title: params[:product][:title], 
			description: params[:product][:description],
			deadline: params[:product][:deadline]
			)
		@product.save

		redirect_to new_user_product_path(@user)
	end

	def show
		@user = User.find(params[:user_id])
		@product = @user.products.find(params[:id])
		@bid = @user.products.new

	end

end
