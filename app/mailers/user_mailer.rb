class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
  
  def welcome_email
    @user = params[:user]
    @url  = 'localhost8080'  #once deployed replace with netlify url
    mail(to: @user.email, subject: 'Welcome to Shugou')
  end
end
