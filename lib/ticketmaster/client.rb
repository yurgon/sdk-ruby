module Ticketmaster
  class Client
    require_relative 'clients/discovery'
    include Ticketmaster::Client::Discovery
    include Ticketmaster::Client::InternationalDiscovery

    attr_accessor :apikey, :int

    def initialize(options={})
      self.apikey = options[:apikey]
      self.int = options[:int]
    end
  end
end
