module Vizion
  class Client
    module Connection

      def get(path, options = {})
        request :get, path, options
      end

      def post(path, options = {})
        request :post, path, options
      end

      def delete(path, options = {})
        request :delete, path, options
      end

      private
        def request(http_method, path, options)
          begin
            response = self.class.send(http_method, path, { body: options })
            status = response.code.to_i
            case status
              when 200 then data = response.parsed_response
              when 400 then data = "Bad Request"
              when 401 then data = "Unauthorized"
              when 403 then data = "Forbidden"
              when 500 then data = "Internal Server Error"
              when 502 then data = "Bad Gateway"
              when 503 then data = "Service Unavailable"
            end
          rescue Net::ReadTimeout => exception
            data = "Error Read Timeout"
          rescue Errno::ECONNREFUSED
            data = "Connection refused"
          end
        end
    end
  end
end
