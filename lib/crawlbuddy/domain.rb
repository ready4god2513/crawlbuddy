require "uri"

module Crawlbuddy

  class Domain

    attr_reader :url
    
    def initialize(u)
      @url = Crawlbuddy::Domain.sanitize(u)
      @host = Crawlbuddy::Domain.host(u)
    end
    
    def self.sanitize(u)
      u = URI.parse(u).scheme.nil? ? "http://#{u}" : u
      u.sub(/www\./, "")
    end
    
    def self.host(u)
      URI.parse(Crawlbuddy::Domain.sanitize(u)).host
    end

    def matches?(u)
      Crawlbuddy::Domain.host(u) == @host
    end

  end

end