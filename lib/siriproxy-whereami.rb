require 'cora'
require 'siri_objects'
require 'pp'
require 'open-uri'
require 'json'

class SiriProxy::Plugin::Whut < SiriProxy::Plugin
  @@do_reverse_geocode = true
  @@debug = true
  def initialize(config)
    if config["debug"] then @@debug = config["debug"] end
    if config["do_reverse_geocode"] then @@do_reverse_geocode = config["do_reverse_geocode"] end
    #if you have custom configuration options, process them here!
  end

end
