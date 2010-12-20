require 'watch_joe'

describe WatchJoe::WatchJoe do
  it '#see_if_joe_is_currently_playing' do
    wj = WatchJoe::WatchJoe.new()
    wj.is_joe_currently_playing().should == false
  end
end
