if Rails.env === 'production' 
  Rails.application.config.session_store :cookie_store, key: '_react-rails-login-backend', domain: 'frontend-domain-here-for-prod'
else
  Rails.application.config.session_store :cookie_store, key: '_react-rails-login-backend' 
end

# configure how server will handle HTTP cookies