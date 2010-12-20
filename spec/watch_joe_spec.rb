require 'watch_joe'

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
    <XboxUserGameInfo>
      <Game>
        <Name>Serious Sam HD: TSE</Name>
        <TotalAchievements>12</TotalAchievements>
        <TotalGamerScore>200</TotalGamerScore>
        <Image32Url>http://tiles.xbox.com/tiles/0m/iK/12dsb2JgbA9ECgUAGwEfL1hRL2ljb24vMC84MDAwIAABAAAAAPilaM0=.jpg</Image32Url>
        <Image64Url>http://tiles.xbox.com/tiles/vc/a+/0Gdsb2JhbC9ECgUAGwEfL1hRL2ljb24vMC84MDAwAAAAAAAAAP+RxqI=.jpg</Image64Url>
      </Game>
      <LastPlayed>2010-12-16T03:08:29+00:00</LastPlayed>
      <Achievements>1</Achievements>
      <GamerScore>5</GamerScore>
      <DetailsURL>http://live.xbox.com/en-US/GameCenter/Achievements?titleId=1480657522&amp;compareTo=SassyMovesToday</DetailsURL>
    </XboxUserGameInfo>
    <XboxUserGameInfo>
      <Game>
        <Name>RESIDENT EVIL 5</Name>
        <TotalAchievements>70</TotalAchievements>
        <TotalGamerScore>1400</TotalGamerScore>
        <Image32Url>http://tiles.xbox.com/tiles/Y-/vw/0mdsb2JgbA9ECgQLGwMfWStXL2ljb24vMC84MDAwIAABAAAAAP3f+3w=.jpg</Image32Url>
        <Image64Url>http://tiles.xbox.com/tiles/DF/XE/1Wdsb2JhbC9ECgQLGwMfWStXL2ljb24vMC84MDAwAAAAAAAAAPrrVRM=.jpg</Image64Url>
      </Game>
      <LastPlayed>2010-12-14T05:01:02+00:00</LastPlayed>
      <Achievements>19</Achievements>
      <GamerScore>345</GamerScore>
      <DetailsURL>http://live.xbox.com/en-US/GameCenter/Achievements?titleId=1128466388&amp;compareTo=SassyMovesToday</DetailsURL>
    </XboxUserGameInfo>
    <XboxUserGameInfo>
      <Game>
        <Name>Lara Croft: GoL</Name>
        <TotalAchievements>12</TotalAchievements>
        <TotalGamerScore>200</TotalGamerScore>
        <Image32Url>http://tiles.xbox.com/tiles/RL/l9/1Wdsb2JgbA9ECgUAGwEfL1paL2ljb24vMC84MDAwIAABAAAAAPpSuVs=.jpg</Image32Url>
        <Image64Url>http://tiles.xbox.com/tiles/Kx/dJ/0mdsb2JhbC9ECgUAGwEfL1paL2ljb24vMC84MDAwAAAAAAAAAP1mFzQ=.jpg</Image64Url>
      </Game>
      <LastPlayed>2010-11-21T20:06:47+00:00</LastPlayed>
      <Achievements>10</Achievements>
      <GamerScore>165</GamerScore>
      <DetailsURL>http://live.xbox.com/en-US/GameCenter/Achievements?titleId=1480657497&amp;compareTo=SassyMovesToday</DetailsURL>
    </XboxUserGameInfo>
    <XboxUserGameInfo>
      <Game>
        <Name>Just Cause 2</Name>
        <TotalAchievements>50</TotalAchievements>
        <TotalGamerScore>1000</TotalGamerScore>
        <Image32Url>http://tiles.xbox.com/tiles/nA/yE/0Wdsb2JgbA9ECgULGwMfWSpUL2ljb24vMC84MDAwIAABAAAAAP6rDIM=.jpg</Image32Url>
        <Image64Url>http://tiles.xbox.com/tiles/86/Kw/1mdsb2JhbC9ECgULGwMfWSpUL2ljb24vMC84MDAwAAAAAAAAAPmfouw=.jpg</Image64Url>
      </Game>
      <LastPlayed>2010-11-13T00:41:08+00:00</LastPlayed>
      <Achievements>3</Achievements>
      <GamerScore>40</GamerScore>
      <DetailsURL>http://live.xbox.com/en-US/GameCenter/Achievements?titleId=1396901863&amp;compareTo=SassyMovesToday</DetailsURL>
    </XboxUserGameInfo>
    <XboxUserGameInfo>
      <Game>
        <Name>Magic: The Gathering</Name>
        <TotalAchievements>18</TotalAchievements>
        <TotalGamerScore>300</TotalGamerScore>
        <Image32Url>http://tiles.xbox.com/tiles/p5/mr/1Wdsb2JgbA9ECgUAGwEfVllTL2ljb24vMC84MDAwIAABAAAAAPqEmbg=.jpg</Image32Url>
        <Image64Url>http://tiles.xbox.com/tiles/yD/ef/0mdsb2JhbC9ECgUAGwEfVllTL2ljb24vMC84MDAwAAAAAAAAAP2wN9c=.jpg</Image64Url>
      </Game>
      <LastPlayed>2010-11-07T06:24:48+00:00</LastPlayed>
      <Achievements>9</Achievements>
      <GamerScore>140</GamerScore>
      <DetailsURL>http://live.xbox.com/en-US/GameCenter/Achievements?titleId=1480656992&amp;compareTo=SassyMovesToday</DetailsURL>
    </XboxUserGameInfo>
    <XboxUserGameInfo>
      <Game>
        <Name>Call of Duty 4</Name>
        <TotalAchievements>37</TotalAchievements>
        <TotalGamerScore>1000</TotalGamerScore>
        <Image32Url>http://tiles.xbox.com/tiles/3g/9G/0Wdsb2JgbA9ECgQJGgYfWSpVL2ljb24vMC84MDAwIAABAAAAAP5pD8E=.jpg</Image32Url>
        <Image64Url>http://tiles.xbox.com/tiles/sa/Fy/1mdsb2JhbC9ECgQJGgYfWSpVL2ljb24vMC84MDAwAAAAAAAAAPldoa4=.jpg</Image64Url>
      </Game>
      <LastPlayed>2010-11-01T02:12:16+00:00</LastPlayed>
      <Achievements>19</Achievements>
      <GamerScore>360</GamerScore>
      <DetailsURL>http://live.xbox.com/en-US/GameCenter/Achievements?titleId=1096157158&amp;compareTo=SassyMovesToday</DetailsURL>
    </XboxUserGameInfo>
    <XboxUserGameInfo>
      <Game>
        <Name>Dragon Age: Origins</Name>
        <TotalAchievements>76</TotalAchievements>
        <TotalGamerScore>1750</TotalGamerScore>
        <Image32Url>http://tiles.xbox.com/tiles/fu/yG/1Wdsb2JgbA9ECgQNGwEfVixTL2ljb24vMC84MDAwIAABAAAAAPqp7GE=.jpg</Image32Url>
        <Image64Url>http://tiles.xbox.com/tiles/EU/Ky/0mdsb2JhbC9ECgQNGwEfVixTL2ljb24vMC84MDAwAAAAAAAAAP2dQg4=.jpg</Image64Url>
      </Game>
      <LastPlayed>2010-10-07T01:25:36+00:00</LastPlayed>
      <Achievements>3</Achievements>
      <GamerScore>40</GamerScore>
      <DetailsURL>http://live.xbox.com/en-US/GameCenter/Achievements?titleId=1161889984&amp;compareTo=SassyMovesToday</DetailsURL>
    </XboxUserGameInfo>
    <XboxUserGameInfo>
      <Game>
        <Name>Red Dead Redemption</Name>
        <TotalAchievements>95</TotalAchievements>
        <TotalGamerScore>1500</TotalGamerScore>
        <Image32Url>http://tiles.xbox.com/tiles/iZ/Vb/02dsb2JgbA9ECgUMGgQfVl0hL2ljb24vMC84MDAwIAABAAAAAPx0lZY=.jpg</Image32Url>
        <Image64Url>http://tiles.xbox.com/tiles/5j/tv/1Gdsb2JhbC9ECgUMGgQfVl0hL2ljb24vMC84MDAwAAAAAAAAAPtAO-k=.jpg</Image64Url>
      </Game>
      <LastPlayed>2010-10-01T23:23:36+00:00</LastPlayed>
      <Achievements>24</Achievements>
      <GamerScore>585</GamerScore>
      <DetailsURL>http://live.xbox.com/en-US/GameCenter/Achievements?titleId=1414793259&amp;compareTo=SassyMovesToday</DetailsURL>
    </XboxUserGameInfo>
    <XboxUserGameInfo>
      <Game>
        <Name>Shank</Name>
        <TotalAchievements>12</TotalAchievements>
        <TotalGamerScore>200</TotalGamerScore>
        <Image32Url>http://tiles.xbox.com/tiles/JW/Ou/0mdsb2JgbA9ECgUAGwEfL1lRL2ljb24vMC84MDAwIAABAAAAAP2BYzo=.jpg</Image32Url>
        <Image64Url>http://tiles.xbox.com/tiles/Ss/2a/1Wdsb2JhbC9ECgUAGwEfL1lRL2ljb24vMC84MDAwAAAAAAAAAPq1zVU=.jpg</Image64Url>
      </Game>
      <LastPlayed>2010-09-26T23:36:43+00:00</LastPlayed>
      <Achievements>11</Achievements>
      <GamerScore>175</GamerScore>
      <DetailsURL>http://live.xbox.com/en-US/GameCenter/Achievements?titleId=1480657506&amp;compareTo=SassyMovesToday</DetailsURL>
    </XboxUserGameInfo>
    <XboxUserGameInfo>
      <Game>
        <Name>Hydro Thunder</Name>
        <TotalAchievements>15</TotalAchievements>
        <TotalGamerScore>250</TotalGamerScore>
        <Image32Url>http://tiles.xbox.com/tiles/4g/2v/1Gdsb2JgbA9ECgUAGwEfV1kiL2ljb24vMC84MDAwIAABAAAAAPuADf0=.jpg</Image32Url>
        <Image64Url>http://tiles.xbox.com/tiles/ja/Ob/02dsb2JhbC9ECgUAGwEfV1kiL2ljb24vMC84MDAwAAAAAAAAAPy0o5I=.jpg</Image64Url>
      </Game>
      <LastPlayed>2010-09-26T20:36:42+00:00</LastPlayed>
      <Achievements>2</Achievements>
      <GamerScore>70</GamerScore>
      <DetailsURL>http://live.xbox.com/en-US/GameCenter/Achievements?titleId=1480657258&amp;compareTo=SassyMovesToday</DetailsURL>
    </XboxUserGameInfo>
    <XboxUserGameInfo>
      <Game>
        <Name>Plants vs. Zombies</Name>
        <TotalAchievements>12</TotalAchievements>
        <TotalGamerScore>200</TotalGamerScore>
        <Image32Url>http://tiles.xbox.com/tiles/5F/4k/1mdsb2JgbA9ECgUAGwEfVyklL2ljb24vMC84MDAwIAABAAAAAPkLXvs=.jpg</Image32Url>
        <Image64Url>http://tiles.xbox.com/tiles/i-/AQ/0Wdsb2JhbC9ECgUAGwEfVyklL2ljb24vMC84MDAwAAAAAAAAAP4-8JQ=.jpg</Image64Url>
      </Game>
      <LastPlayed>2010-09-26T20:35:19+00:00</LastPlayed>
      <Achievements>0</Achievements>
      <GamerScore>0</GamerScore>
      <DetailsURL>http://live.xbox.com/en-US/GameCenter/Achievements?titleId=1480657407&amp;compareTo=SassyMovesToday</DetailsURL>
    </XboxUserGameInfo>
    <XboxUserGameInfo>
      <Game>
        <Name>XMen Origins Wolverine</Name>
        <TotalAchievements>50</TotalAchievements>
        <TotalGamerScore>1000</TotalGamerScore>
        <Image32Url>http://tiles.xbox.com/tiles/j6/sm/1mdsb2JgbA9ECgQJGgYfVl5VL2ljb24vMC84MDAwIAABAAAAAPkJq5A=.jpg</Image32Url>
        <Image64Url>http://tiles.xbox.com/tiles/4A/US/0Wdsb2JhbC9ECgQJGgYfVl5VL2ljb24vMC84MDAwAAAAAAAAAP49Bf8=.jpg</Image64Url>
      </Game>
      <LastPlayed>2010-09-25T23:25:57+00:00</LastPlayed>
      <Achievements>38</Achievements>
      <GamerScore>720</GamerScore>
      <DetailsURL>http://live.xbox.com/en-US/GameCenter/Achievements?titleId=1096157206&amp;compareTo=SassyMovesToday</DetailsURL>
    </XboxUserGameInfo>
    <XboxUserGameInfo>
      <Game>
        <Name>STREET FIGHTER IV</Name>
        <TotalAchievements>48</TotalAchievements>
        <TotalGamerScore>1000</TotalGamerScore>
        <Image32Url>http://tiles.xbox.com/tiles/3L/M6/02dsb2JgbA9ECgQLGwMfWSpSL2ljb24vMC84MDAwIAABAAAAAPwVs8M=.jpg</Image32Url>
        <Image64Url>http://tiles.xbox.com/tiles/sx/0O/1Gdsb2JhbC9ECgQLGwMfWSpSL2ljb24vMC84MDAwAAAAAAAAAPshHaw=.jpg</Image64Url>
      </Game>
      <LastPlayed>2010-09-25T06:25:34+00:00</LastPlayed>
      <Achievements>17</Achievements>
      <GamerScore>220</GamerScore>
      <DetailsURL>http://live.xbox.com/en-US/GameCenter/Achievements?titleId=1128466401&amp;compareTo=SassyMovesToday</DetailsURL>
    </XboxUserGameInfo>
    <XboxUserGameInfo>
      <Game>
        <Name>SCOTT PILGRIM THE GAME</Name>
        <TotalAchievements>12</TotalAchievements>
        <TotalGamerScore>200</TotalGamerScore>
        <Image32Url>http://tiles.xbox.com/tiles/5F/5O/1Wdsb2JgbA9ECgUAGwEfL10gL2ljb24vMC84MDAwIAABAAAAAPphXvs=.jpg</Image32Url>
        <Image64Url>http://tiles.xbox.com/tiles/i-/B6/0mdsb2JhbC9ECgUAGwEfL10gL2ljb24vMC84MDAwAAAAAAAAAP1V8JQ=.jpg</Image64Url>
      </Game>
      <LastPlayed>2010-08-29T20:43:45+00:00</LastPlayed>
      <Achievements>5</Achievements>
      <GamerScore>70</GamerScore>
      <DetailsURL>http://live.xbox.com/en-US/GameCenter/Achievements?titleId=1480657452&amp;compareTo=SassyMovesToday</DetailsURL>
    </XboxUserGameInfo>
  </RecentGames>
</XboxInfo>
HERE
end

describe WatchJoe::WatchJoe do
  it '#see_if_joe_is_currently_playing' do
    wj = WatchJoe::WatchJoe.new(not_logged_in_data)
    wj.is_joe_currently_playing().should == false
  end
end
