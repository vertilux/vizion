require "httparty"
require "vizion/client/connection"
require "vizion/client/carriers"
require "vizion/client/references"

module Vizion
  class Client
    include HTTParty 
    include Vizion::Client::Connection
    include Vizion::Client::Carriers
    include Vizion::Client::References

    base_uri "https://demo.vizionapi.com"
    format :json

    def initialize(api_key = nil)
      api_key ||= ENV["VIZION_API_KEY"]
      self.class.default_options.merge!(headers: { 'X-API-Key' => "#{api_key}" })
    end
  end
end
