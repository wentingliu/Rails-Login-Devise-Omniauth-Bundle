Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  provider :facebook, 'KEY', 'SECRET'
  provider :google_oauth2, 'CLIENT_ID', 'CLIENT_SECRET'
end