FROM ubuntu:latest
LABEL maintainer="Erik Thomsen"

# Install OpenVPN
RUN apt-get -y update && \
    apt-get -y install openvpn sshpass python3-pip

RUN pip3 install ansible pywinrm
COPY *.ovpn *.txt /tmp/
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
