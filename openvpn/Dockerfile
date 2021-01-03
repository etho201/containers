FROM archlinux
LABEL maintainer="Erik Thomsen"

# Update the repositories
RUN	pacman -Syy

# Install OpenVPN
RUN	pacman -Sy --noconfirm openvpn

ENTRYPOINT ["openvpn", "--config"]