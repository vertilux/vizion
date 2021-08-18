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

    DEFAULT_TIMEOUT = 120

    base_uri "https://prod.vizionapi.com"
    format :json

    def initialize(options = {})
      @api_key = options[:api_key] || ENV["VIZION_API_KEY"]
      @timeout = options[:timeout] || DEFAULT_TIMEOUT

      self.class.default_options.merge!(
        headers: { 'X-Api-Key' => @api_key },
        timeout: @timeout
      )
    end
  end
end
