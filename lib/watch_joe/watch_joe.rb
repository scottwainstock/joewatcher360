module WatchJoe
  require 'nokogiri'
  require 'open-uri'

  class WatchJoe
    attr_accessor :doc

    def initialize(source)
      @doc = (source =~ /^http/ ? Nokogiri::XML(open(source)) : Nokogiri::XML(source))
    end

    def is_joe_currently_playing
      @doc.xpath("//Online").first.inner_text == "false" ? false : true
    end
  end
end
