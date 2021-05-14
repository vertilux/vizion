module Vizion
  class Client
    module Carriers

      def carriers(options = {})
        get("/carriers", options)
      end

    end
  end
end
