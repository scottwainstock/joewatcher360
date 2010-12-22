require 'parseconfig'
require 'watch_joe'

tc = ParseConfig.new('config/twitter.conf')

describe WatchJoe::LogJoe do
  it '#trim_to_twitter_size' do
    trimmed = WatchJoe::LogJoe.trim_to_twitter_size(<<HERE)
I don't recall much about this fear. For doing those performances I did in music class, I stood on the floor rather than on the stage. During lunch, whenever someone moved one of those ketchup or mustard bottles too close to me, I got up from my table asking them to move it elsewhere. I was often bullied about this. I don't recall much else though.
HERE

    trimmed.length.should == 140
    (trimmed + "\n").should == <<HERE
I don't recall much about this fear. For doing those performances I did in music class, I stood on the floor rather than on the stage. Durin
HERE
  end
end
