class LoginMailer < ApplicationMailer
    def welcome_email(user)
        @user = user
        mail(to: @user.email, subject: 'Sample Email')
      end    
      def sample_email(users)
        # abort users.email.define?
     
        mail(to: users.email, subject: 'Welcome to Elearning Website')
    end
end
