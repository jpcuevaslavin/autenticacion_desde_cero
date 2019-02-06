class SessionsController < ApplicationController

  def new
  end
  
  def create
    @user = User.find_by(
      email: params[:user][:email],
      password: params[:user][:password]
    )
    if @user.present?
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Has iniciado sesión con éxito!'
    else
      redirect_to sign_in_path, alert: 'Tus credenciales no son válidas!'
    end
  end

  def destroy
    session.delete(:user_id) if session[:user_id].present?
    redirect_to sign_in_path, notice: 'Has cerrado sesión con éxito!'
  end
  
end
