class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # unless user_signed_in?
  #   redirect_to login_path
  # end
end
