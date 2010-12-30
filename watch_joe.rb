require 'watch_joe'

joe = ARGV[0]

jw = WatchJoe::WatchJoe.new('http://xboxapi.duncanmackenzie.net/gamertag.ashx?GamerTag=' + joe, joe)
jw.watch_joe
