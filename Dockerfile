FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y curl python python3
RUN curl -sLf 'https://dl.cloudsmith.io/public/rigs-of-rods/rigs-of-rods/cfg/install/bash.deb.sh' | bash
RUN apt-get install -y wget cmake pkg-config libogre-1.9-dev libmygui-dev libmygui.ogreplatform0debian1v5 libopenal-dev libcurl4-openssl-dev libgtk2.0-dev libois-dev libssl-dev libwxgtk3.0-dev angelscript pagedgeometry socketw
RUN wget -nv http://ftp.debian.org/debian/pool/main/r/rapidjson/rapidjson-dev_1.1.0+dfsg2-1_all.deb
RUN dpkg -i rapidjson-dev_1.1.0+dfsg2-1_all.deb
