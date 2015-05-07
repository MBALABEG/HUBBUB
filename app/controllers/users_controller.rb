class UsersController < ApplicationController
	def new
		@user = User.new
	end
	def create
		@user = User.new(user_params) # creates a new user with name, email, and password
	end
	private
	def user_params # required parameters for new users
		params.require(:user).permit(:name, :email. :password)
	end
end
