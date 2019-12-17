class ApplicationController < ActionController::Base
    # disable this so that we don’t receive ‘forbidden’ parameters
    # that will prevent our controller actions from executing without errors.
    # security token that Rails generates from our session data and adds to the parameters 
    # sent from a Rails form to a controller action to prevent cross-site request forgery (CSRF) attacks
    skip_before_action :verify_authenticity_token
end
