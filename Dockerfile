FROM ubuntu:latest

RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:openrct2/master
RUN apt-get install -y openrct2=0.4.5*

RUN groupadd --gid 1000 openrct2 && useradd --uid 1000 --gid 1000 -m openrct2
USER openrct2

VOLUME ["/park.park"]
ENTRYPOINT ["openrct2", "host", "/park.park", "--headless"]

