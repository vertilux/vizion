module Vizion
  class Client
    module References

      def all_references(options = {})
        get("/references", options)
      end

      def create_reference(options)
        post("/references", options)
      end

      def reference(id)
        get("/references/#{id}")
      end

      def reference_updates(id)
        get("/references/#{id}/updates")
      end

      def delete_reference(id)
        delete("/references/#{id}")
      end

    end
  end
end
