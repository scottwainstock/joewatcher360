module WatchJoe
  require 'nokogiri'
  require 'open-uri'

  class WatchJoe
    attr_accessor :doc

    def initialize(source)
      @doc = (source =~ /^http/ ? Nokogiri::XML(open(source)) : Nokogiri::XML(source))
    end

    def is_joe_currently_playing?
      @doc.xpath("//Online").first.inner_text == "false" ? false : true
    end

    def what_game_is_joe_playing
      playing1 = @doc.xpath("//Info").first.inner_text
      playing2 = @doc.xpath("//Info2").first.inner_text

      [playing1, playing2].select {|p| !p.empty? }.join(' : ')
    end
  end
end
