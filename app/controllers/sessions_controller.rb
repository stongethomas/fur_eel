class SessionsController < ApplicationController


	skip_before_filter :is_admin, only: [:new, :create, :destroy]

	def create
	  session[:password] = params[:password]
	  flash[:notice] = "Successfully logged in"
	  redirect_to admin_path
	end

	def destroy
	  reset_session
	  flash[:notice] = "Successfully logged out"
	  redirect_to login_path
	end


end