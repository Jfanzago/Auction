class ProductsController < ApplicationController
	def index
		@user = User.find_by(id: params[:user_id])
		@products = @user.products.all
	end
	def new
		@user = User.find_by(:id params[:user_id])
		@products = @user.products.new
	end		
	def create 
		@user = User.find_by(id: params[:user_id])
		@user.products.new(uer_params)
	end

	private 
	
	def product_params
		params.require(:product).permit(:title, :description, :deadline)

end
