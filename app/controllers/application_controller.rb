class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  helper_method :current_user # tells the application that current_user is a helper method



  def current_user # method for current_user that displays the users name on the page
  	if session[:user_id]
  		@current_user||= User.find(session[:user_id])
  		return @current_user
  	else
  		return nil
  	end
  end
end
