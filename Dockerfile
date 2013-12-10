FROM mischief/golang
ENV HOME /root
RUN apt-get install -y libsqlite3-dev 
RUN go get github.com/robfig/revel/revel
RUN mkdir -p $GOPATH/src/github.com/PacketFire
RUN cd $GOPATH/src/github.com/PacketFire/; git clone https://github.com/PacketFire/goqdb.git
WORKDIR /root
CMD revel run github.com/PacketFire/goqdb prod
