module WatchJoe
  require 'twitter'

  class LogJoe
    attr_accessor :twitter_client

    def initialize(consumer_key, consumer_secret, oauth_token, oauth_token_secret)
      Twitter.configure do |config|
        config.consumer_key       = consumer_key
        config.consumer_secret    = consumer_secret
        config.oauth_token        = oauth_token
        config.oauth_token_secret = oauth_token_secret
      end

      @twitter_client = Twitter::Client.new
    end
      #      client.update("SECOND POST")
  end
end
