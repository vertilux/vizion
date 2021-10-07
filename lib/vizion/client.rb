require "faraday"
require "faraday_middleware"

module Vizion
  class Client
    BASE_URL = "https://prod.vizionapi.com"

    attr_reader :api_key, :adapter

    def initialize(api_key:, adapter: Faraday.default_adapter)
      @api_key = api_key || ENV["VIZION_API_KEY"]
      @adapter = adapter
    end

    def carriers
      CarriersResource.new(self)
    end

    def references
      ReferencesResource.new(self)
    end

    def connection
      @connection ||= Faraday.new do |con|
        con.url_prefix = BASE_URL
        con.request :json
        con.response :json, content_type: "application/json"
        con.adapter adapter
      end
    end
  end
end
