require 'faraday'
require 'json'
require_relative 'configuration'

module Ticketmaster
  class Request
    include Configuration

    attr_accessor :path, :params, :client, :method, :url

    def initialize(path, params, client, url = nil)
      self.path   = path
      self.params = params
      self.client = client
      self.url = url
    end

    def get
      conn = Faraday.new(:url => url)
      response = conn.get path, formatted_params
      JSON.parse(response.body)
    end

    private

    def formatted_params
      params.delete_if {|key, value| !PERMITTED_PARAMS.include? key }
      params[:apikey] ||= client.apikey
      params[:format]   = 'json'
      params
    end
    
    def url
      client.url || 'https://app.ticketmaster.com'
    end
  end
end

