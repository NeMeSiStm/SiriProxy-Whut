# -*- encoding: utf-8 -*-
require 'cora'
require 'siri_objects'
require 'pp'

class SiriProxy::Plugin::Whut < SiriProxy::Plugin
    def initialize(config)
        
        #Webserver Ip Adresse oder FQDN definieren
        @webserver.ip = config['whut_ip']
        @webserver.port = config['whut_port']
        
        #Raumvariablen definieren
        @roomzero = config['whut_room0']
        @roomone = config['whut_room1']
        @roomtwo = config['whut_room2']
        @roomthree = config['whut_room3']
        @roomfour = config['whut_room4']
        @roomfive = config['whut_room5']
        @roomsix = config['whut_room6']
        @roomseven = config['whut_room7']
        @roomeight = config['whut_room8']
        @roomnine = config['whut_room9']
        @status.on = [ 'ein', 'on', 'einschalten', 'aktivieren', 'activate', 'play', 'wiedergeben' ]
        @status.off = ['aus', 'off', 'ausschalten', 'stopp', 'stoppen', 'halt', 'anhalten', 'pause' ]
        @joker = ['music', 'musik']

    end

    listen_for /test #{joker}/i do
            say "Hello, SiriProxy WHUT funktioniert einwandfrei. Glaube ich zumindest." #say something to the user!
        request_completed #always complete your request! Otherwise the phone will "spin" at the user!
    end


    listen_for /#{@roomzero} #{@joker} #{@status.on}/i do
            say "#{@roomzero}"
                sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver.ip:@webserver.port}/sonos/index.php?zone=#{@roomzero}&do=Play"))
            say "Ein"
        request_completed
    end

    listen_for /#{@roomzero} #{@joker} #{@status.off}/i do
            say "#{@roomzero}"
                sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver.ip:@webserver.port}/sonos/index.php?zone=#{@roomzero}&do=Pause"))
            say "Aus"
        request_completed
    end

listen_for /sonos erhöhe Lautstärke im Badezimmer/i do

     sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver.ip:@webserver.port}/sonos/index.php?zone=Badezimmer&do=VolumeUp"))
     sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver.ip:@webserver.port}/sonos/index.php?zone=Badezimmer&do=VolumeUp"))
     sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver.ip:@webserver.port}/sonos/index.php?zone=Badezimmer&do=VolumeUp"))
     sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver.ip:@webserver.port}/sonos/index.php?zone=Badezimmer&do=VolumeUp"))
     sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver.ip:@webserver.port}/sonos/index.php?zone=Badezimmer&do=VolumeUp"))

    say "Die Lautstärke im Badezimmer wurde erhöht."
    
    request_completed
    #Die Lautstärke wird um 5 Punkte erhöht.
    end

listen_for /sonos veringere Lautstärke im Badezimmer/i do

    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver.ip:@webserver.port}/sonos/index.php?zone=Badezimmer&do=VolumeDown"))
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver.ip:@webserver.port}/sonos/index.php?zone=Badezimmer&do=VolumeDown"))
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver.ip:@webserver.port}/sonos/index.php?zone=Badezimmer&do=VolumeDown"))
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver.ip:@webserver.port}/sonos/index.php?zone=Badezimmer&do=VolumeDown"))
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver.ip:@webserver.port}/sonos/index.php?zone=Badezimmer&do=VolumeDown"))

    say "Die Lautstärke im Badezimmer wurde verringert."
    
    request_completed
    #Die Lautstärke wird um 5 Punkte verringert.
    end

end
