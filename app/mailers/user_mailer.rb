class UserMailer < ApplicationMailer
  default from: "dhiogoandre26@gmail.com"

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: "Bem-vindo ao nosso sistema!")
  end
end
