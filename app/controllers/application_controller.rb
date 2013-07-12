class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
  layout :layout_by_resource
	
	def after_sign_in_path_for(resource)
 	noticias_dashboard_path
	end

	protected

	def layout_by_resource
	  if devise_controller?
	    "login"
	  else
	    "application"
	  end
	end

end
