FROM k3v0r/janus-gateway:cache #use temporary the cache, for faster building
MAINTAINER Kevin Rojczyk <kevin.roj@p8h.de>


EXPORT 8088
EXPORT 7088 #admin website
    
    
CMD /opt/janus/bin/janus

