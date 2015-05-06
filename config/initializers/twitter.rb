
$twitter_client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_KEY"]
  config.consumer_secret     = ENV["TWITTER_SECRET_KEY"]
  config.access_token        = nil
  config.access_token_secret = nil
end