class UserMailer < ApplicationMailer

  default from: 'enzostk@gmail.com'
 
  def welcome_email(user)
    @user = user 
    @url  = 'https://eventbritedupauvre.herokuapp.com/' 
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end

end
