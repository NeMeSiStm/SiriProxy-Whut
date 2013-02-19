# -*- encoding: utf-8 -*-
require 'cora'
require 'siri_objects'
require 'pp'

class SiriProxy::Plugin::Whut < SiriProxy::Plugin
    def initialize(config)
        @host = config["whut_ip"]
    end

    listen_for /test Musik/i do

    say "Hello, SiriProxy zu WHUT funktioniert einwandfrei. Glaube ich zumindest." #say something to the user!
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
    end

    listen_for /Musik Badezimmer Ein/i do
        
            @response = Net::HTTP.get(URI.parse("http://#{@host}/sonos/index.php?zone=Badezimmer&do=Play"))
        
    say "Die Musik im Badezimmer wurde gestartet."
    
    request_completed
    #Musik im Badezimmer Ein.
    
    end

    listen_for /Musik Badezimmer Aus/i do
    
            @response = Net::HTTP.get(URI.parse("http://192.168.11.50/sonos/index.php?zone=Badezimmer&do=Pause"))
    
    say "Die Musik im Badezimmer wurde angehalten."
    
    request_completed
    #Musik im Badezimmer Aus.
    
    end



# listen_for /sonos erhöhe Lautstärke im Badezimmer/i do
#    open("http://192.168.11.50/sonos/index.php?zone=Badezimmer&do=VolumeUp")

#    say "Die Lautstärke im Badezimmer wurde erhöht."
    
#    request_completed
    #Die Lautstärke wird um einen Punkt erhöht.
#end

#listen_for /sonos veringere Lautstärke im Badezimmer/i do
#    open("http://192.168.11.50/sonos/index.php?zone=Badezimmer&do=VolumeDown")
    
#    say "Die Lautstärke im Badezimmer wurde verringert."
    
#    request_completed
    #Die Lautstärke wird um einen Punkt verringert.

#end

end
