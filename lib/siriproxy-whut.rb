require 'cora'
require 'siri_objects'
require 'pp'

class SiriProxy::Plugin::Whut < SiriProxy::Plugin
    def initialize(config)
        #if you have custom configuration options, process them here!
    end
    
    listen_for /test Musik/i do
    say "Hallo Michael, Sonos zu PHP funktioniert einwandfrei. Glaube ich zumindest." #say something to the user!
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
    end
end
