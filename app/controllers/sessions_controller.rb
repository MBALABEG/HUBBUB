class SessionsController < ApplicationController
	def new
	end
	def create
		params[:email]

		user = User.find_by_email(params[:email])

		# if the user exists and the password entered is correct
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to '/'
		else
			redirect_to '/sessions/login'
		end
	end
	
	def destroy
		session[:user_id] = nil
		redirect_to '/'
	end
end
