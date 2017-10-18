FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y wget cmake pkg-config python3 libogre-1.9-dev libmygui-dev libmygui.ogreplatform0debian1v5 libopenal-dev libcurl4-openssl-dev libgtk2.0-dev libois-dev libssl-dev libwxgtk3.0-dev
RUN wget -nv http://ftp.debian.org/debian/pool/main/r/rapidjson/rapidjson-dev_1.1.0+dfsg-3_all.deb http://prdownloads.sourceforge.net/rigs-of-rods/pagedgeometry-1.2.0-x86_64.deb	http://prdownloads.sourceforge.net/rigs-of-rods/socketw-3.10.26-x86_64.deb	http://prdownloads.sourceforge.net/rigs-of-rods/angelscript-2.31.2-x86_64.deb	http://prdownloads.sourceforge.net/rigs-of-rods/caelum-0.6.3-x86_64.deb
RUN dpkg -i rapidjson-dev_1.1.0+dfsg-3_all.deb pagedgeometry-1.2.0-x86_64.deb	socketw-3.10.26-x86_64.deb	angelscript-2.31.2-x86_64.deb	caelum-0.6.3-x86_64.deb
