class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

         def configure_permitted_parameters
              devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:avatar,:name,:age, :email, :password, :role_id,:student_id, :standard_id)}

              devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name,:age, :email, :password, :current_password, :avatar, :password_confirmation)}
         end

         def after_sign_in_path_for(resource)
           
          LoginMailer.sample_email(@user.email,@user.password).deliver

           if current_user.role_id == 2
                    student_index_path
           elsif current_user.role_id == 3
                    teacher_index_path
           elsif current_user.role_id == 4
                    parent_index_path
           end
          end

         



          def avatar_thumbnail
               if avatar.attached?
                 avatar.variant(resize:"150X150").processed
               else
                   '/default_profile.jpg'
               end
           end

        
    

end
