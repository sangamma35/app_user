class ApplicationController < ActionController::Base
    helper_method :current_user, :favorite_text, :logged_in?
  
  def favorite_text
    return @favorite_exists? "UnFavorite" : "Favorite"
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:error] = "You must be logged in to perform that action"
      redirect_to login_path
    end
  end

end
