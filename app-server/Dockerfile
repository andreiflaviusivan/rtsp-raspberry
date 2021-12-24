FROM ubuntu:20.04
COPY rtsp-simple-server /root
COPY *.yml /root
WORKDIR /root
EXPOSE 8999
EXPOSE 1935
EXPOSE 8888
ENTRYPOINT ./rtsp-simple-server