require 'parseconfig'
require 'watch_joe'

tc = ParseConfig.new('config/twitter.conf')

describe WatchJoe::LogJoe do
  it '#log_that_joe_is_online' do
    lj = WatchJoe::LogJoe.new(tc.get_value('consumer_key'), tc.get_value('consumer_secret'), tc.get_value('oauth_token'), tc.get_value('oauth_token_secret'))
  end
end
