Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['facebook_id'], ENV['facebook_secret']
           # :scope => 'public_profile,email,user_birthday', :display => 'popup'
# OmniAuth.config.logger = Rails.logger
end