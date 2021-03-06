module UsersHelper
  
  def user_signed_in?
    session[:user_id].present?
  end

  def current_user
    User.find(session[:user_id])
  end
  
end
