# -*- encoding: utf-8 -*-
require 'cora'
require 'siri_objects'
require 'pp'

class SiriProxy::Plugin::Whut < SiriProxy::Plugin
    def initialize(config)
        
        #Webserver Ip Adresse oder FQDN definieren
        @whut = config["whut_ip"]
        
        #Raumvariablen definieren
        roomzero = config["whut_room0"]
        room1 = config["whut_room1"]
        room2 = config["whut_room2"]
        room3 = config["whut_room3"]
        room4 = config["whut_room4"]
        room5 = config["whut_room5"]
        room6 = config["whut_room6"]
        room7 = config["whut_room7"]
        room8 = config["whut_room8"]
        room9 = config["whut_room9"]

    end

    listen_for /test Musik/i do

    say "Hello, SiriProxy WHUT funktioniert einwandfrei. Glaube ich zumindest." #say something to the user!
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
    end

listen_for /Musik #{roomzero} Ein/i do
    
    say "http://#{@whut}/sonos/index.php?zone=#{roomzero}&do=Play"
    
    #        sonosbefehl = Net::HTTP.get(URI.parse("http://#{@whut}/sonos/index.php?zone=#{roomzero}&do=Play"))
        
    say "Die Musik in #{room0} wurde gestartet."
    
    request_completed
    #Musik im Raum 0 Ein.
    
    end

    listen_for /Musik Badezimmer Aus/i do
    
            sonosbefehl = Net::HTTP.get(URI.parse("http://#{@whut}/sonos/index.php?zone=Badezimmer&do=Pause"))
    
    say "Die Musik im Badezimmer wurde angehalten."
    
    request_completed
    #Musik im Badezimmer Aus.
    end



 listen_for /sonos erhöhe Lautstärke im Badezimmer/i do

     sonosbefehl = Net::HTTP.get(URI.parse("http://#{@whut}/sonos/index.php?zone=Badezimmer&do=VolumeUp"))
     sonosbefehl = Net::HTTP.get(URI.parse("http://#{@whut}/sonos/index.php?zone=Badezimmer&do=VolumeUp"))
     sonosbefehl = Net::HTTP.get(URI.parse("http://#{@whut}/sonos/index.php?zone=Badezimmer&do=VolumeUp"))
     sonosbefehl = Net::HTTP.get(URI.parse("http://#{@whut}/sonos/index.php?zone=Badezimmer&do=VolumeUp"))
     sonosbefehl = Net::HTTP.get(URI.parse("http://#{@whut}/sonos/index.php?zone=Badezimmer&do=VolumeUp"))

    say "Die Lautstärke im Badezimmer wurde erhöht."
    
    request_completed
    #Die Lautstärke wird um 5 Punkte erhöht.
    end

listen_for /sonos veringere Lautstärke im Badezimmer/i do

    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@whut}/sonos/index.php?zone=Badezimmer&do=VolumeDown"))
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@whut}/sonos/index.php?zone=Badezimmer&do=VolumeDown"))
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@whut}/sonos/index.php?zone=Badezimmer&do=VolumeDown"))
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@whut}/sonos/index.php?zone=Badezimmer&do=VolumeDown"))
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@whut}/sonos/index.php?zone=Badezimmer&do=VolumeDown"))

    say "Die Lautstärke im Badezimmer wurde verringert."
    
    request_completed
    #Die Lautstärke wird um 5 Punkte verringert.
    end

end
