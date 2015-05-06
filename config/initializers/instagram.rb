require 'instagram'

Instagram.configure do |config|
    config.client_id = ENV['INSTAGRAM_KEY']
    config.client_secret= ENV['INSTAGRAM_SECRET_KEY']
end