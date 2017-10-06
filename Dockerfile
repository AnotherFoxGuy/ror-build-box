FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y curl wget
RUN curl -s https://packagecloud.io/install/repositories/AnotherFoxGuy/rigs-of-rods/script.deb.sh | bash
RUN apt-get install -y cmake pkg-config socketw-dev angelscript-dev libogre-1.9-dev libmygui-dev libmygui.ogreplatform0debian1v5 libopenal-dev libcurl4-openssl-dev libgtk2.0-dev libois-dev libssl-dev libwxgtk3.0-dev
RUN wget -nv http://ftp.debian.org/debian/pool/main/r/rapidjson/rapidjson-dev_1.1.0+dfsg-3_all.deb http://prdownloads.sourceforge.net/rigs-of-rods/caelum-0.6.3-x86_64.deb http://prdownloads.sourceforge.net/rigs-of-rods/pagedgeometry-1.2.0-x86_64.deb
RUN dpkg -i rapidjson-dev_1.1.0+dfsg-3_all.deb caelum-0.6.3-x86_64.deb pagedgeometry-1.2.0-x86_64.deb
