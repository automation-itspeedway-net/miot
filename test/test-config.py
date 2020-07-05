# Test the config module
# (c) Copyright Si Dunford, Jul 2020

from miot import config

print( config.tostring() )

config.wipe()

# TEST CONFIG
print( "RESULT="+config.get( "mqtt.host", "xyz" ) )
print( "RESULT="+config.get( "mqtt.default.host", "abc" ) )
print( "RESULT="+config.get( "rss.feed", "123" ) )

config.set( "mqtt.host", "192.168.1.228" )
config.set( "mqtt.default.host", "192.168.1.253" )
config.set( "rss.itspeedway", {'url':"https://itspeedway.net"} )
config.set( "rss.bbc", {'url':"https://bbc.co.uk"} )

config.save()

print( config.tostring() )


