class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

         def configure_permitted_parameters
              devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name,:age, :email, :password, :role_id,:student_id, :standard_id)}

              devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name,:age, :email, :password, :current_password,role_id,:student_id, :standard_id)}
         end
end
