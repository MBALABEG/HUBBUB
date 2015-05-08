class SessionsController < ApplicationController
	def new
	end
	def create
		user = User.find_by_email(params[:email])
		# if the user exists and the password entered is correct
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to '/' #have not yet defined the redirects, other than root
		else
			redirect_to '/'
	end
	def destroy
		session[:user_id] = nil
		redirect_to '/'
	end
end
