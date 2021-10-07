module Vizion
  class ReferencesResource < Resource

    def list(per_page: nil, page: nil)
      params = {limit: per_page, page: page}.compact
      Collection.from_response get_request("references?include_metadata=true", params: params), type: Reference
    end

    def retreive(id, **params)
      Reference.new get_request("references/#{id}", params: params).body
    end

    def create(**attributes)
      Reference.new post_request("references", body: attributes).body
    end

    def updates(id, **params)
     get_request("references/#{id}/updates", params: params).body
    end

    def delete(id)
      delete_request("references/#{id}")
      true
    end

  end
end
