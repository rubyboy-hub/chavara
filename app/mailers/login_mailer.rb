class LoginMailer < ApplicationMailer
    def welcome_email(user)
        @user = user
        mail(to: @user.email, subject: 'Sample Email')
      end    
      def sample_email(user,password)
        @user = user
        @password = password
        mail(to: @user, subject: 'Welcome Email')
    end
end
