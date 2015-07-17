FROM library/debian:stable
MAINTAINER Kevin Rojczyk <kevin.roj@p8h.de>

RUN apt-get -q update && \
    apt-get -y -q install build-essential cmake libmicrohttpd-dev libjansson-dev libnice-dev \
    libssl-dev libsrtp-dev libsofia-sip-ua-dev libglib2.0-dev \
    libopus-dev libogg-dev libini-config-dev libcollection-dev \
    pkg-config gengetopt libtool automake git
    
RUN git clone git://git.libwebsockets.org/libwebsockets && \
    cd libwebsockets && \
    mkdir build && \
    cd build && \
    cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr .. && \
    make && sudo make install
    
RUN git clone https://github.com/meetecho/janus-gateway.git && \
    cd janus-gateway && \
    sh autogen.sh && \
    ./configure --prefix=/opt/janus --disable-docs --disable-data-channels --disable-rabbitmq && \
    make && \
    make install && \
    make configs
    

    
    
    
# CMD /opt/janus/bin/janus

