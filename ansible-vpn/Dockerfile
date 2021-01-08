FROM alpine:latest
LABEL maintainer="Erik Thomsen"

RUN apk add openvpn curl ansible py-pip
RUN pip3 install pywinrm
COPY *.ovpn /tmp/
COPY *.txt /tmp/