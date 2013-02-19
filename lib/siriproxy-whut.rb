# -*- encoding: utf-8 -*-
require 'cora'
require 'siri_objects'
require 'httparty'
require 'pp'
require 'json'

class SiriProxy::Plugin::Whut < SiriProxy::Plugin
    def initialize(config)
    end

    listen_for /test Musik/i do

    say "Hallo Michael, Sonos zu PHP funktioniert einwandfrei. Glaube ich zumindest." #say something to the user!
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
    end

    listen_for /starte die Wiedergabe im Badezimmer/i do
        say "Ich probiers!"
            @response = Net::HTTP.get(URI.parse("http://192.168.11.50/sonos/index.php?zone=Badezimmer&do=Play"))
            @result = JSON.parse(@response)
            @joke = @result["value"]["joke"]
    say "Die Musik im Badezimmer wurde gestartet. #{joke}"
    
    request_completed
    #Musik im Badezimmer Ein.
    
    end

    listen_for /stoppe die Wiedergabe im Badezimmer/i do
    
    open("http://192.168.11.50/sonos/index.php?zone=Badezimmer&do=Pause")
    
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
