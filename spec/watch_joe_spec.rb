require 'watch_joe'
require 'timecop'

class WatchJoe::LogJoe
  def update_twitter(msg)
    @msg = PStore.new('twitter_msg.pstore')
    @msg.transaction { @msg['msg'] = 'Tweeted: ' + msg }
  end
end

def get_pstore_field(pstore, field)
  value = nil
  pstore.transaction { value = pstore[field]  }
end

def set_pstore_field(pstore, field, value)
  pstore.transaction { pstore[field] = value }
end

def logged_in_data(info, info2)
<<HERE
<?xml version="1.0"?>
<XboxInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <AccountStatus>Gold</AccountStatus>
  <PresenceInfo>
    <Valid>true</Valid>
    <Info>#{info}</Info>
    <Info2>#{info2}</Info2>
    <LastSeen>2010-12-20T04:32:15+00:00</LastSeen>
    <Online>true</Online>
    <StatusText>Online</StatusText>
    <Title>Netflix</Title>
  </PresenceInfo>
  <State>Valid</State>
  <Gamertag>frenchfryfairy</Gamertag>
  <ProfileUrl>http://live.xbox.com/member/frenchfryfairy</ProfileUrl>
  <TileUrl>http://avatar.xboxlive.com/avatar/frenchfryfairy/avatarpic-l.png</TileUrl>
  <Country>United States</Country>
  <Reputation>99.97789</Reputation>
  <Bio />
  <Location />
  <ReputationImageUrl>http://live.xbox.com/xweb/lib/images/gc_repstars_external_20.gif</ReputationImageUrl>
  <GamerScore>5935</GamerScore>
  <Zone>Recreation</Zone>
  <RecentGames>
    <XboxUserGameInfo>
      <Game>
        <Name>Call of Duty Black Ops</Name>
        <TotalAchievements>50</TotalAchievements>
        <TotalGamerScore>1000</TotalGamerScore>
        <Image32Url>http://tiles.xbox.com/tiles/tT/MX/0mdsb2JgbA9ECgQJGgYfVlpWL2ljb24vMC84MDAwIAABAAAAAP04M6o=.jpg</Image32Url>
        <Image64Url>http://tiles.xbox.com/tiles/2p/0j/1Wdsb2JhbC9ECgQJGgYfVlpWL2ljb24vMC84MDAwAAAAAAAAAPoMncU=.jpg</Image64Url>
      </Game>
      <LastPlayed>2010-12-18T06:11:17+00:00</LastPlayed>
      <Achievements>19</Achievements>
      <GamerScore>265</GamerScore>
      <DetailsURL>http://live.xbox.com/en-US/GameCenter/Achievements?titleId=1096157269&amp;compareTo=frenchfryfairy</DetailsURL>
    </XboxUserGameInfo>
    <XboxUserGameInfo>
      <Game>
        <Name>Assassin's Creed II</Name>
        <TotalAchievements>50</TotalAchievements>
        <TotalGamerScore>1000</TotalGamerScore>
        <Image32Url>http://tiles.xbox.com/tiles/ox/Jb/0Wdsb2JgbA9ECgUNGgMfVlwhL2ljb24vMC84MDAwIAABAAAAAP50Erw=.jpg</Image32Url>
        <Image64Url>http://tiles.xbox.com/tiles/zL/xv/1mdsb2JhbC9ECgUNGgMfVlwhL2ljb24vMC84MDAwAAAAAAAAAPlAvNM=.jpg</Image64Url>
      </Game>
      <LastPlayed>2010-12-07T06:04:43+00:00</LastPlayed>
      <Achievements>39</Achievements>
      <GamerScore>855</GamerScore>
      <DetailsURL>http://live.xbox.com/en-US/GameCenter/Achievements?titleId=1431504955&amp;compareTo=frenchfryfairy</DetailsURL>
    </XboxUserGameInfo>
  </RecentGames>
</XboxInfo>
HERE
end

def not_logged_in_data
#http://xboxapi.duncanmackenzie.net/gamertag.ashx?GamerTag=SassyMovesToday
<<HERE
<?xml version="1.0"?>
<XboxInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <AccountStatus>Gold</AccountStatus>
  <PresenceInfo>
    <Valid>true</Valid>
    <Info>Last seen 4 minutes ago playing Xbox.com</Info>
    <Info2 />
    <LastSeen>2010-12-20T03:01:57+00:00</LastSeen>
    <Online>false</Online>
    <StatusText>Offline</StatusText>
    <Title>Xbox.com</Title>
  </PresenceInfo>
  <State>Valid</State>
  <Gamertag>SassyMovesToday</Gamertag>
  <ProfileUrl>http://live.xbox.com/member/SassyMovesToday</ProfileUrl>
  <TileUrl>http://avatar.xboxlive.com/avatar/SassyMovesToday/avatarpic-l.png</TileUrl>
  <Country>United States</Country>
  <Reputation>99.27212</Reputation>
  <Bio />
  <Location />
  <ReputationImageUrl>http://live.xbox.com/xweb/lib/images/gc_repstars_external_20.gif</ReputationImageUrl>
  <GamerScore>14880</GamerScore>
  <Zone>Recreation</Zone>
  <RecentGames>
    <XboxUserGameInfo>
      <Game>
        <Name>Pinball FX2</Name>
        <TotalAchievements>51</TotalAchievements>
        <TotalGamerScore>850</TotalGamerScore>
        <Image32Url>http://tiles.xbox.com/tiles/z3/pZ/1Gdsb2JgbA9ECgUAGwEfL11QL2ljb24vMC84MDAwIAABAAAAAPt2etA=.jpg</Image32Url>
        <Image64Url>http://tiles.xbox.com/tiles/oN/Rt/02dsb2JhbC9ECgUAGwEfL11QL2ljb24vMC84MDAwAAAAAAAAAPxC1L8=.jpg</Image64Url>
      </Game>
      <LastPlayed>2010-12-19T23:59:05+00:00</LastPlayed>
      <Achievements>8</Achievements>
      <GamerScore>50</GamerScore>
      <DetailsURL>http://live.xbox.com/en-US/GameCenter/Achievements?titleId=1480657443&amp;compareTo=SassyMovesToday</DetailsURL>
    </XboxUserGameInfo>
    <XboxUserGameInfo>
      <Game>
        <Name>Castlevania HD</Name>
        <TotalAchievements>12</TotalAchievements>
        <TotalGamerScore>200</TotalGamerScore>
        <Image32Url>http://tiles.xbox.com/tiles/wY/04/1Wdsb2JgbA9ECgUAGwEfL1giL2ljb24vMC84MDAwIAABAAAAAPoXjd4=.jpg</Image32Url>
        <Image64Url>http://tiles.xbox.com/tiles/ri/MM/0mdsb2JhbC9ECgUAGwEfL1giL2ljb24vMC84MDAwAAAAAAAAAP0jI7E=.jpg</Image64Url>
      </Game>
      <LastPlayed>2010-12-19T22:04:47+00:00</LastPlayed>
      <Achievements>4</Achievements>
      <GamerScore>55</GamerScore>
      <DetailsURL>http://live.xbox.com/en-US/GameCenter/Achievements?titleId=1480657530&amp;compareTo=SassyMovesToday</DetailsURL>
    </XboxUserGameInfo>
  </RecentGames>
</XboxInfo>
HERE
end

describe WatchJoe::WatchJoe do
  it '#joe_currently_online?' do
    wj = WatchJoe::WatchJoe.new(not_logged_in_data, 'test')
    wj.joe_currently_online?.should == false

    wj = WatchJoe::WatchJoe.new(logged_in_data('foo','bar'), 'test')
    wj.joe_currently_online?.should == true
  end

  it '#activity_occuring' do
    wj = WatchJoe::WatchJoe.new(not_logged_in_data, 'test')
    wj.activity_occuring.should == 'Last seen 4 minutes ago playing Xbox.com'

    wj = WatchJoe::WatchJoe.new(logged_in_data('Being rad', 'in radtown'), 'test')
    wj.activity_occuring.should == 'Being rad : in radtown'
  end

  it '#cheevo_status' do
    wj = WatchJoe::WatchJoe.new(not_logged_in_data, 'test')
    wj.cheevo_status.should == '12 cheevos, 14880G'

    wj = WatchJoe::WatchJoe.new(logged_in_data('foo', 'bar'), 'test')
    wj.cheevo_status.should == '58 cheevos, 5935G'
  end

  it '#watch_joe' do
    user_data = PStore.new('test_watch.pstore')
    twitter_msg = PStore.new('twitter_msg.pstore')

    wj = WatchJoe::WatchJoe.new(not_logged_in_data, 'test')
    wj.watch_joe

    get_pstore_field(user_data, 'online').should == nil
    get_pstore_field(twitter_msg, 'msg').should == nil

    wj = WatchJoe::WatchJoe.new(logged_in_data('Being rad', nil), 'test')
    wj.watch_joe

    get_pstore_field(user_data, 'online').should == true
    get_pstore_field(user_data, 'first_seen').to_s.should == Time.now.to_s
    get_pstore_field(user_data, 'activity').should == 'Being rad'
    get_pstore_field(twitter_msg, 'msg').should == 'Tweeted: WOAH GUYS! Joe is playing his XBox! Currently: Being rad'

    wj = WatchJoe::WatchJoe.new(logged_in_data('Being rad', nil), 'test')
    wj.watch_joe

    get_pstore_field(user_data, 'online').should == true
    get_pstore_field(user_data, 'activity').should == 'Being rad'

    wj = WatchJoe::WatchJoe.new(logged_in_data('Switched to a new thing', 'the newest of things'), 'test')
    wj.watch_joe

    get_pstore_field(user_data, 'online').should == true
    get_pstore_field(user_data, 'activity').should == 'Switched to a new thing : the newest of things'
    get_pstore_field(twitter_msg, 'msg').should == 'Tweeted: New activity: Switched to a new thing : the newest of things'

    Timecop.travel(Time.now() + (60 * 50))

    wj = WatchJoe::WatchJoe.new(not_logged_in_data, 'test')
    wj.watch_joe

    get_pstore_field(user_data, 'online').should == nil
    get_pstore_field(user_data, 'first_seen').should == nil
    get_pstore_field(user_data, 'activity').should == nil
    get_pstore_field(user_data, Time.now().strftime("%m%d%y")).should == 50
    get_pstore_field(twitter_msg, 'msg').should == "Tweeted: Bad news guys, Joe logged off of XBox Live. This session was ~50 minutes. He's played for ~50 minutes today."

    wj = WatchJoe::WatchJoe.new(logged_in_data('Being rad', nil), 'test')
    wj.watch_joe

    Timecop.travel(Time.now() + (60 * 10))

    wj = WatchJoe::WatchJoe.new(not_logged_in_data, 'test')
    wj.watch_joe

    get_pstore_field(user_data, Time.now().strftime("%m%d%y")).should == 60
    get_pstore_field(twitter_msg, 'msg').should == "Tweeted: Bad news guys, Joe logged off of XBox Live. This session was ~10 minutes. He's played for ~60 minutes today."
  end

  it '#end_of_week_update' do
    user_data = PStore.new('test_watch.pstore')
    twitter_msg = PStore.new('twitter_msg.pstore')

    set_pstore_field(user_data, '120110', 11)
    set_pstore_field(user_data, '121210', 11)
    set_pstore_field(user_data, '121310', 10)
    set_pstore_field(user_data, '121710', 20)
    set_pstore_field(user_data, '121910', 30)

    Timecop.travel(Time.local(2010, 12, 19, 12, 0, 0))

    wj = WatchJoe::WatchJoe.new(not_logged_in_data, 'test')
    wj.end_of_week_update

    get_pstore_field(twitter_msg, 'msg').should == 'Tweeted: This is your Joe end of the week update. ~60 minutes were spent on XBox Live. Joe currently has 12 cheevos, 14880G.'
  end

  after(:each) { ['test_watch.pstore', 'twitter_msg.pstore'].each {|f| File.delete(f) if File.exists? (f) } }
end
