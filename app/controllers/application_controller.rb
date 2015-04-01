class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # With this when logging in on an unauthenticated page it will redirect you to your own user page
  # When forced to log in because we were sent to an authenticated page it will redirect back to the
  # page after logging in
  def user_root_path
    user_path(current_user) if current_user
  end

  # When trying to look at a page on active admin you're not allowed to
  def access_denied(exception)
    redirect_to current_user, :alert => exception.message
  end

  # Handle omniauth failure. See https://github.com/plataformatec/devise/wiki/OmniAuth%3A-Overview#using-omniauth-without-other-authentications
  def new_session_path(scope)
   new_user_session_path
  end
end
