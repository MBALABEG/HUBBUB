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
		#	user && user.authenticate(params[:password]) !== user
			flash[:error] = "Incorrect password or email"
			render 'new'
		end
	end
	def destroy
		session[:user_id] = nil
		redirect_to '/'
	end
end
