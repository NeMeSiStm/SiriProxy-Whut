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

    listen_for /sonos starte die Wiedergabe im Badezimmer/i do

    open("http://milkyway.merkur.local/sonos/index.php?zone=Badezimmer&do=Play")
    
    say "Die Musik im Badezimmer wurde gestartet."
    
    request_completed
    #Musik im Badezimmer Ein.
    
    end

listen_for /sonos erhöhe Lautstärke im Badezimmer/i do
    open("http://milkyway.merkur.local/sonos/index.php?zone=Badezimmer&do=VolumeUp")
    
    say "Die Lautstärke im Badezimmer wurde erhöht."
    
    request_completed
    #Die Lautstärke wird um einen Punkt erhöht.
end

listen_for /sonos veringere Lautstärke im Badezimmer/i do
    open("http://milkyway.merkur.local/sonos/index.php?zone=Badezimmer&do=VolumeDown")
    
    say "Die Lautstärke im Badezimmer wurde verringert."
    
    request_completed
    #Die Lautstärke wird um einen Punkt verringert.
end



end
