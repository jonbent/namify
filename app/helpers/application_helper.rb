module ApplicationHelper
  def login(user)
    session[:user_id] = user.id
  end

  def session_logout
    session.delete(:user_id)
  end

  def current_user
    @current_user || User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

end
