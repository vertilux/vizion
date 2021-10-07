module Vizion
  class CarriersResource < Resource

    def list(**params)
      get_request("carriers", params: params).body
    end

  end
end
