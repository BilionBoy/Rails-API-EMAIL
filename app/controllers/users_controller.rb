require "ostruct"  # Adicione esta linha

class UsersController < ApplicationController
  def send_email
    user = OpenStruct.new(name: params[:name], email: params[:email])
    # Verifique os parâmetros para garantir que 'email' esteja correto
    UserMailer.welcome_email(user).deliver_now
    render json: { message: "Email enviado com sucesso!", user: user }
  rescue => e
    render json: { error: e.message }, status: 500
  end
end
