FROM ubuntu:latest

RUN apt-get update && apt-get install --no-install-recommends -y cmake libsdl2-dev libicu-dev gcc pkg-config libjansson-dev libspeex-dev libspeexdsp-dev libcurl4-openssl-dev libcrypto++-dev libfontconfig1-dev libfreetype6-dev libpng-dev libssl-dev libzip-dev xdg-utils curl

RUN curl -o /opt/openrct2.tar.gz http://cdn.limetric.com/games/openrct2/0.2.0/master/0aff800/9/OpenRCT2-0.2.0-linux-x86_64.tar.gz

RUN tar xzvf /opt/openrct2.tar.gz -C /opt

VOLUME ["/opt/OpenRCT2/park.sc6"]
ENTRYPOINT ["/opt/OpenRCT2/openrct2", "host", "/opt/OpenRCT2/park.sc6", "--headless"]
