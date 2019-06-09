FROM ubuntu:16.04

LABEL maintainer "Yuji Iwai <iwai.ug@gmail.com>"

RUN  apt-get update -qq \
  && apt-get -qq install -y --no-install-recommends software-properties-common \
  && add-apt-repository ppa:fontforge/fontforge \
  && apt-get update -qq \
  && apt-get install -y --no-install-recommends fontforge git \
  && rm -rf /var/lib/apt/lists/* \
  && git clone https://github.com/iwai/fontpatcher.git /srv/fontpatcher \
  && mkdir /data

WORKDIR /data

VOLUME ["/data"]

ENTRYPOINT [ "fontforge", "/srv/fontpatcher/scripts/powerline-fontpatcher" ]

