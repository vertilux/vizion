module Vizion
  class Collection
    attr_reader :data, :page, :page_count, :per_page, :item_count

    #Set include_metadata=true to receive pagination info in the response
    #Use the page query parameter to set the current page (default: 1)
    #Use the limit query parameter to set a per page limit (default: 25)

    # from_response(response, key: "references", type: Reference)
    def self.from_response(response, type:)
      body = response.body
      new(
        data: body["data"].map{ |attrs| type.new(attrs) },
        page: body.dig("metadata", "page"),
        page_count: body.dig("metadata", "page_count"),
        per_page: body.dig("metadata", "per_page"),
        item_count: body.dig("metadata", "item_count")
      )
    end

    def initialize(data:, page:, page_count:, per_page:, item_count:)
      @data = data
      @page = page
      @page_count = page_count
      @per_page = per_page
      @item_count = item_count
    end
  end
end
