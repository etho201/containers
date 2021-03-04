FROM archlinux:latest
LABEL maintainer="Erik Thomsen"

# # WORKAROUND for glibc 2.33 and old Docker
# # See https://github.com/actions/virtual-environments/issues/2658
# # Thanks to https://github.com/lxqt/lxqt-panel/pull/1562
# RUN patched_glibc=glibc-linux4-2.33-4-x86_64.pkg.tar.zst && \
#     curl -LO "https://repo.archlinuxcn.org/x86_64/$patched_glibc" && \
#     bsdtar -C / -xvf "$patched_glibc"

# Update the repositories
RUN	pacman -Syy

# Install OpenVPN
RUN	pacman -Sy --noconfirm openvpn curl sshpass ansible python-pip
RUN pip3 install pywinrm
COPY *.ovpn *.txt /tmp/
COPY .bash_history /root/