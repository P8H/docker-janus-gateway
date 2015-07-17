FROM k3v0r/janus-gateway:cache
#use temporary the cache, for faster building
MAINTAINER Kevin Rojczyk <kevin.roj@p8h.de>

ADD janus.plugin.streaming.cfg /opt/janus/etc/janus/janus.plugin.streaming.cfg

EXPOSE 8088
EXPOSE 8188
#websocket
EXPOSE 7088 
#admin website
VOLUME /media


    
CMD /opt/janus/bin/janus

