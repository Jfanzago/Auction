class UsersController < ApplicationController
	def index
		@users = User.all
			if @users.empty?
				render 'no_such_user'
			else
				render 'index'
		end
	end

	def show
		@user = User.find_by(id: params[:id])
		if @user
			render 'show'					
		else
			render 'no_such_user'
		end
	end

	def create
		@user = User.create(user_params)
			if @user.save
				link_to user_path(@user)
			else
				render 'new'
			end
	end

	def destroy
		User.find(params[:id]).destroy
		redirect_to users_path
	end

	def new
		@user = User.new
	end
	
	private #this says only the three arguments are allowed!
	def user_params
		params.require(:user).permit(:name, :email)
	end
end
