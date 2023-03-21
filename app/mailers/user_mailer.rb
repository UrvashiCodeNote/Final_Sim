class UserMailer < ApplicationMailer

   default from: 'notifications@example.com'

  def welcome_email(user)
    byebug
    @user = user
     # @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Successful Signup in SIM Provider Application')
  end


  #  def welcome_email(user)
  #   @user = 
  #   mail(:to => user.email, :subject => 'Welcome')       
  # end
end
