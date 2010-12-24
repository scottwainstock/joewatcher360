module WatchJoe
  require 'nokogiri'
  require 'open-uri'
  require 'pstore'

  class WatchJoe
    attr_accessor :doc, :pstore, :twitter

    def initialize(source, joe)
      tc = ParseConfig.new('config/twitter.conf')
      @doc = (source =~ /^http/ ? Nokogiri::XML(open(source)) : Nokogiri::XML(source))
      @pstore = PStore.new(joe + '_watch.pstore')
      @twitter = LogJoe.new(tc.get_value('consumer_key'), tc.get_value('consumer_secret'), tc.get_value('oauth_token'), tc.get_value('oauth_token_secret'))
    end

    def watch_joe
      previously_online = get_pstore_field('online')

      if (self.joe_currently_online? && previously_online)
        if (get_pstore_field('activity') != self.activity_occuring)
          @twitter.update_twitter('New activity: ' + self.activity_occuring)
          set_pstore_fields('activity' => self.activity_occuring)
        end
      elsif (self.joe_currently_online? && !previously_online)
        @twitter.update_twitter('WOAH GUYS! Joe is playing his XBox! Currently: ' + self.activity_occuring)
        set_pstore_fields('online' => true, 'first_seen' => Time.now, 'activity' => self.activity_occuring)
      elsif (!self.joe_currently_online? && previously_online)
        session_minutes = ((Time.now() - get_pstore_field('first_seen')) / 60).to_i
        today_minutes = get_pstore_field(Time.now().strftime("%m%d%y")).to_i + session_minutes

        @twitter.update_twitter('Bad news guys, Joe logged off of XBox Live. This session was ~' + session_minutes.to_s + " minutes. He's played for ~" + today_minutes.to_s + ' minutes today.')
        set_pstore_fields('online' => nil, 'first_seen' => nil, 'activity' => nil, Time.now().strftime("%m%d%y") => today_minutes)
      else
        #joe hasn't been online in a bit, let's just wait him out
      end
    end

    def joe_currently_online?
      @doc.xpath('//Online').first.inner_text == 'false' ? false : true
    end

    def activity_occuring
      playing1 = @doc.xpath('//Info').first.inner_text
      playing2 = @doc.xpath('//Info2').first.inner_text

      [playing1, playing2].select {|p| !p.empty? }.join(' : ')
    end

    def cheevo_status
      g = @doc.xpath('//GamerScore').first.inner_text
      cheevo_count = @doc.xpath('//Achievements').collect {|a| a.inner_text.to_i}.inject {|sum, a| sum + a}

      cheevo_count.to_s + ' cheevos, ' + g + 'G'
    end

    def get_pstore_field(field)
      value = nil
      @pstore.transaction { value = @pstore[field]  }
    end

    def set_pstore_fields(fields)
      @pstore.transaction { fields.each_pair { |f, v| @pstore[f] = v } }
    end
  end
end
