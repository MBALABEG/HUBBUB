class UsersController < ApplicationController
	def new
		@user = User.new
	end
	def create
		@user = User.new(user_params)
		if @user.save # creates a new session when a user logs in 
			session[:user_id] = @user.id
			redirect_to '/'
		end
	end
	private
	def user_params # users are required to have these attributes
		require(:user).permit(:name, :email, :password)
	end
end
