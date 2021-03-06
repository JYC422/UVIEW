class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

    helper_method :current_user
    helper_method :current_rest
    helper_method :current_review

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def current_rest
      @current_rest ||= Restaurant.find(session[:restaurant_id]) if session[:restaurant_id]
    end

    def current_review
      @current_review ||= Review.find(session[:review_id]) if session[:review_id]
    end

    def authorize
      redirect_to login_path, alert: 'Not authorized - You must be logged in!' if current_user.nil?
    end

end
