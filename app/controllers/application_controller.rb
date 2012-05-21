class ApplicationController < ActionController::Base
  protect_from_forgery

before_filter :is_admin, only: [:new, :create, :edit, :update, :delete, :destroy, :admin]

helper_method :admin?
helper_method :is_admin

helper_method :authorize

protected

  def admin?
  session[:password] == '4424649'
  end


def authorize
  unless admin?
    flash[:error] = "unauthorized access"
    redirect_to root_path
    false
  end
 end

def is_admin
      admin? || redirect_to(root_path, notice: "You are not authorized for that.")
end

end
