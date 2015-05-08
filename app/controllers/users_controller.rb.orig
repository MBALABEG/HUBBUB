class UsersController < ApplicationController
<<<<<<< HEAD
=======
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
>>>>>>> 3a6a4520a0d1ed3fa6cdd571b9f6171a248224d1
end
