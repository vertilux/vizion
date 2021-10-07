require "ostruct"

module Vizion
  class Object
    def initialize(attributes)
      @attributes = OpenStruct.new(attributes)
    end

    def method_missing(method, *args, &block)
      attribute = @attributes.send(method, *args, &block)
      attribute.is_a?(Hash) ? Object.new(attribute) : attribute
    end

    def respond_to_missing?(method, inlcude_private = false)
      true
    end
  end
end
