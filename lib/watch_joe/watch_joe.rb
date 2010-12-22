module WatchJoe
  require 'nokogiri'
  require 'open-uri'
  require 'pstore'

  class WatchJoe
    attr_accessor :doc, :pstore

    def initialize(source, joe)
      @doc = (source =~ /^http/ ? Nokogiri::XML(open(source)) : Nokogiri::XML(source))
      @pstore = PStore.new(joe + '_watch.pstore')
    end

    def watch_joe
      previously_online = get_pstore_field('online')

      if (self.joe_currently_online? && previously_online)
        @pstore['activity'] = self.activity_occuring
      elsif (self.joe_currently_online? && !previously_online)
        set_pstore_fields('online' => true, 'first_seen' => Time.now, 'activity' => self.activity_occuring)
      elsif (!self.joe_currently_online? && previously_online)
        set_pstore_fields('online' => nil, 'first_seen' => nil, 'activity' => nil)
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
