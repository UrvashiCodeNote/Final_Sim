class UserMailer < ApplicationMailer

   default from: 'notifications@example.com'

  def welcome_email(user)
    byebug
    @user = user
    @url = "http://localhost:3000/users/sign_in"
    mail(to: @user.email, subject: 'Successful Signup in SIM Provider Application')
  end
end
