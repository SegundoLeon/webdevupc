class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :configure_permitted_parameters, if: :devise_controller?
    protected
        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:user_type_id,:name, :surname, :email, :mobilephone, :phone, :date_of_birth, :is_female, :address, :marital_status, :company, :password) }
            devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:user_type_id, :name, :surname, :email, :mobilephone, :phone, :date_of_birth, :is_female, :address, :marital_status, :company, :password, :current_password) }
        end
end
