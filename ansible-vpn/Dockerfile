FROM archlinux:latest
LABEL maintainer="Erik Thomsen"

# Update the repositories
RUN	pacman -Syy

# Install OpenVPN
RUN	pacman -Sy --noconfirm openvpn curl sshpass ansible python-pip
RUN pip3 install pywinrm
COPY *.ovpn *.txt /tmp/
COPY .bash_history /root/