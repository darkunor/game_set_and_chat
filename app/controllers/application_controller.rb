class ApplicationController < ActionController::Base
  protect_from_forgery

  # protected
  #   def after_sign_in_path_for(resource)
  #     rootposts#index
  #   end

  rescue_from CanCan::AccessDenied do |exception| 
    redirect_to root_path, alert: "You can't access this page" 
  end

end
