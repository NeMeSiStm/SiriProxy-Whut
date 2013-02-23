# -*- encoding: utf-8 -*-
require 'cora'
require 'siri_objects'
require 'pp'

class SiriProxy::Plugin::Whut < SiriProxy::Plugin
    def initialize(config)
        
        #Webserver Ip Adresse oder FQDN definieren
        @webserver_ip = config['whut_ip']
        @webserver_port = config['whut_port']
        
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
        @status_ein = [ 'ein', 'on', 'einschalten', 'aktivieren', 'activate', 'play', 'wiedergeben' ]
        @status_aus = ['aus', 'off', 'ausschalten', 'stopp', 'stoppen', 'halt', 'anhalten', 'pause' ]
        @welli = ['Music', 'Musik']

    end

    listen_for /test #{@welli}/i do
            say "Hello, SiriProxy WHUT funktioniert einwandfrei. Glaube ich zumindest." #say something to the user!
        request_completed #always complete your request! Otherwise the phone will "spin" at the user!
    end


    listen_for /#{@roomzero} ein/i do
            say "#{@roomzero}"
                sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomzero}&do=Play"))
            say "Ein"
        request_completed
    end

    listen_for /#{@roomzero} aus/i do
            say "#{@roomzero}"
                sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomzero}&do=Pause"))
            say "Aus"
        request_completed
    end
listen_for /#{@roomone} ein/i do
    say "#{@roomone}"
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomone}&do=Play"))
    say "Ein"
    request_completed
end

listen_for /#{@roomone} aus/i do
    say "#{@roomone}"
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomone}&do=Pause"))
    say "Aus"
    request_completed
end

listen_for /#{@roomtwo} ein/i do
    say "#{@roomtwo}"
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomtwo}&do=Play"))
    say "Ein"
    request_completed
end

listen_for /#{@roomtwo} aus/i do
    say "#{@roomtwo}"
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomtwo}&do=Pause"))
    say "Aus"
    request_completed
end

listen_for /#{@roomthree} ein/i do
    say "#{@roomthree}"
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomthree}&do=Play"))
    say "Ein"
    request_completed
end

listen_for /#{@roomthree} aus/i do
    say "#{@roomthree}"
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomthree}&do=Pause"))
    say "Aus"
    request_completed
end

listen_for /#{@roomfour} ein/i do
    say "#{@roomfour}"
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomfour}&do=Play"))
    say "Ein"
    request_completed
end

listen_for /#{@roomfour} aus/i do
    say "#{@roomfour}"
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomfour}&do=Pause"))
    say "Aus"
    request_completed
end

listen_for /#{@roomfive} ein/i do
    say "#{@roomfive}"
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomfive}&do=Play"))
    say "Ein"
    request_completed
end

listen_for /#{@roomfive} aus/i do
    say "#{@roomfive}"
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomfive}&do=Pause"))
    say "Aus"
    request_completed
end

listen_for /#{@roomsix} ein/i do
    say "#{@roomsix}"
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomsix}&do=Play"))
    say "Ein"
    request_completed
end

listen_for /#{@roomsix} aus/i do
    say "#{@roomsix}"
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomsix}&do=Pause"))
    say "Aus"
    request_completed
end

listen_for /#{@roomseven} ein/i do
    say "#{@roomseven}"
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomseven}&do=Play"))
    say "Ein"
    request_completed
end

listen_for /#{@roomseven} aus/i do
    say "#{@roomseven}"
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomseven}&do=Pause"))
    say "Aus"
    request_completed
end

listen_for /#{@roomeight} ein/i do
    say "#{@roomeight}"
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomeight}&do=Play"))
    say "Ein"
    request_completed
end

listen_for /#{@roomeight} aus/i do
    say "#{@roomeight}"
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomeight}&do=Pause"))
    say "Aus"
    request_completed
end

listen_for /#{@roomnine} ein/i do
    say "#{@roomnine}"
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomnine}&do=Play"))
    say "Ein"
    request_completed
end

listen_for /#{@roomnine} aus/i do
    say "#{@roomnine}"
    sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=#{@roomnine}&do=Pause"))
    say "Aus"
    request_completed
end





#listen_for /#{@roomzero} lauter/i do

    #     sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=Badezimmer&do=VolumeUp"))
    # sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=Badezimmer&do=VolumeUp"))
    # sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=Badezimmer&do=VolumeUp"))
    # sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=Badezimmer&do=VolumeUp"))
    # sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=Badezimmer&do=VolumeUp"))

#    say "Die Lautstärke im Badezimmer wurde erhöht."

#    request_completed
    #Die Lautstärke wird um 5 Punkte erhöht.
#    end

#listen_for /#{@roomzero} leiser/i do
    #sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=Badezimmer&do=VolumeDown"))
    #sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=Badezimmer&do=VolumeDown"))
    #sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=Badezimmer&do=VolumeDown"))
    #sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=Badezimmer&do=VolumeDown"))
    #sonosbefehl = Net::HTTP.get(URI.parse("http://#{@webserver_ip}:#{@webserver_port}/sonos/index.php?zone=Badezimmer&do=VolumeDown"))

#    say "Die Lautstärke im Badezimmer wurde verringert."
    
#    request_completed
    #Die Lautstärke wird um 5 Punkte verringert.
#    end

end
