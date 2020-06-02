FROM alpine:latest
MAINTAINER Erik Thomsen 

RUN apk add openvpn curl ansible py-pip
RUN pip3 install pywinrm
COPY *.ovpn /root/