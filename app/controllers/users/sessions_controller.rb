# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  def avatar_thumbnail
    if avatar.attached?
      avatar.variant(resize:"150X150").processed
    else
        '/default_profile.jpg'
    end
  end

  # GET /bands
  # def index
  #   @users = User.all

  #   render json: @users
  # end

  # GET /bands/1
  # def show
  #   render json: @user
  # end
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
      # super
  # end

  # POST /resource/sign_in
  # def create
  #   @user = User.new(user_params)

  #   if @user.save
  #     render json: @user, status: :created, location: @user
  #   else
  #     render json: @user.errors, status: :unprocessable_entity
  #   end
  # end

  # def user_params
  #   params.require(:user).permit(:name,:age, :email, :encrypted_password, :role_id,:student_id, :standard_id)
  # end


  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

end
