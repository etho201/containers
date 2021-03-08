FROM ubuntu:latest
LABEL maintainer="Erik Thomsen"

# Install OpenVPN
RUN apt-get -y update && \
    apt-get -y install openvpn sshpass python3-pip

# Install Ansible
RUN pip3 install ansible pywinrm

COPY *.ovpn *.txt /tmp/
COPY .bash_history /root/