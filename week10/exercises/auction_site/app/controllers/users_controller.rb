class UsersController < ApplicationController

	def home 
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(
			name: params[:user][:name], 
			email: params[:user][:email]
			)
		@user.save

		redirect_to '/users'
	end

	def index
		@users= User.all
	end

	def show 
		@user = User.find_by(params[:user_id])
	end

end
