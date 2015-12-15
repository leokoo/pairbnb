Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['facebook_id'], ENV['facebook_secret'],
  scope: 'email', display: 'page'
# OmniAuth.config.logger = Rails.logger
end