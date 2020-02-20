Recaptcha.configure do |config|
  config.site_key   = RECAPTCHA_SITE_KEY
  config.secret_key = RECAPTCHA_SECRET_KEY
  config.proxy = '127.0.0.1'
end
