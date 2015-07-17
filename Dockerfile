FROM library/debian:stable
MAINTAINER Kevin Rojczyk <kevin.roj@p8h.de>

RUN aptitude install libmicrohttpd-dev libjansson-dev libnice-dev \
    libssl-dev libsrtp-dev libsofia-sip-ua-dev libglib2.0-dev \
    libopus-dev libogg-dev libini-config-dev libcollection-dev \
    pkg-config gengetopt libtool automake
    

