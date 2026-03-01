FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install wget build-essential libtool autotools-dev automake pkg-config bsdmainutils python3 libevent-dev libboost-dev libsqlite3-dev libzmq3-dev -y
WORKDIR /opt/
RUN wget https://github.com/bitcoin-silver/core/releases/download/v1.0.2/bitcoinsilver-linux.tar.gz
RUN tar zxvf bitcoinsilver-linux.tar.gz
RUN rm bitcoinsilver-linux.tar.gz
RUN mv bitcoinsilver* /usr/bin/
#RUN wget https://raw.githubusercontent.com/TheRetroMike/rmt-nomp/master/scripts/blocknotify.c
#RUN gcc blocknotify.c -o /usr/bin/blocknotify
CMD /usr/bin/bitcoinsilverd -printtoconsole
