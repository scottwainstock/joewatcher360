require 'watch_joe'

joe = ARGV[0]
summary_type = ARGV[1]

jw = WatchJoe::WatchJoe.new('http://xboxapi.duncanmackenzie.net/gamertag.ashx?GamerTag=' + joe, joe)
jw.summary_update(summary_type)
