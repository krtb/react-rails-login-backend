class ApplicationController < ActionController::Base
    # disable this so that we don’t receive ‘forbidden’ parameters
    # that will prevent our controller actions from executing without errors.
    # security token that Rails generates from our session data and adds to the parameters 
    # sent from a Rails form to a controller action to prevent cross-site request forgery (CSRF) attacks
    skip_before_action :verify_authenticity_token


    def login!
        session[:user_id] = @user.id
    end

    def logged_in?
        # double bang, !!, forces to boolean context and then TRUE
        !!session[:user_id]
    end

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def authorized_user?
        @user == current_user
    end

    def logout!
        session.clear
    end


end
