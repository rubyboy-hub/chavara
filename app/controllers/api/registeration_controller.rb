class Api::RegisterationController < ApplicationController

    def index
        @users = User.all
        render json: @users, status: :ok
      end
    
      # GET /users/1
      def show
        render json: @user
      end
    
      # POST /users
      def create
        user = User.new(user_details)
        if user.save
          render json: user, status: :created
        else
          render json: {
            errors: user.errors.full_messages
          }, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /bands/1
      def update
        find_user
        if @user.present?
          @user.first.update(user_details)
          render json: {
            message: 'update success',
            data: @user
          }
        else
          render json: {
            errors: 'user not found'
          }, status: :not_found
        end
      end
    
      # DELETE /bands/1
      def destroy
        find_user
                if @user.present?
                @user.first.destroy(user_details)
                render json: {
                    message: 'success',
                    data: @user
                }
                else
                render json: {
                    errors: 'user not found'
                }, status: :not_found
                end
      end
      def typeahead
        users = User.any_of({ firstName: params[:input] }, { lastName: params[:input] }, { email: params[:input] })
        render json: {
          message: 'success',
          data: users
        }
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def find_user
            @userdet = User.where(id: params[:id].to_i)
        end
    
        # Only allow a list of trusted parameters through.
        def user_details
          params.permit(:name,:age,:email,:password,:role_id,:student_id,:standard_id)
        end
end
