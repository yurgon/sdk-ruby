module Ticketmaster
  class Client
    require_relative 'clients/discovery'
    include Ticketmaster::Client::Discovery

    attr_accessor :apikey, :url

    def initialize(options={})
      self.apikey = options[:apikey]
      self.url = options[:url]
    end
  end
end
