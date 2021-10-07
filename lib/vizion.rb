require_relative "vizion/version"

module Vizion
  autoload :Client, "vizion/client"
  autoload :Collection, "vizion/collection"
  autoload :Error, "vizion/error"
  autoload :Object, "vizion/object"
  autoload :Resource, "vizion/resource"

  autoload :CarriersResource, "vizion/resources/carriers"
  autoload :ReferencesResource, "vizion/resources/references"

  autoload :Carrier, "vizion/objects/carrier.rb"
  autoload :Reference, "vizion/objects/reference.rb"
end
