FROM library/debian:stable
MAINTAINER Kevin Rojczyk <kevin.roj@p8h.de>

RUN aptitude install libmicrohttpd-dev libjansson-dev libnice-dev \
    libssl-dev libsrtp-dev libsofia-sip-ua-dev libglib2.0-dev \
    libopus-dev libogg-dev libini-config-dev libcollection-dev \
    pkg-config gengetopt libtool automake git
    
RUN git clone https://github.com/meetecho/janus-gateway.git && \
    cd janus-gateway && \
    sh autogen.sh && \
    ./configure --prefix=/opt/janus --disable-websockets --disable-data-channels --disable-rabbitmq && \
    make && \
    make install && \
    make configs
    
    
    
# CMD /opt/janus/bin/janus

