Recaptcha.configure do |config|
  config.site_key   = ENV_RECAPTCHA_PUBLIC_KEY
  config.secret_key = ENV_RECAPTCHA_PRIVATE_KEY
  config.proxy = '127.0.0.1'
  ENV.fetch(ENV_RECAPTCHA_PRIVATE_KEY)
  ENV.fetch(ENV_RECAPTCHA_PRIVATE_KEY)
end
