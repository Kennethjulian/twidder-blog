class ApplicationController < ActionController::Base
    # prevent CSRF attacks by raising an exception
    # for APIs, you may want to use :null_session insted.
    protect_from_forgery with: :exception
    before_action :configure_permitted_parmeters, if: :devise_controller?
protected

def configure_permitted_parmeters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :bio, :location])
    devise_parameter_sanitizer.permit(:account_update,keys:[:username, :name, :bio, :location])
    end
end 