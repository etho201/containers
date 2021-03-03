#!/bin/sh -l

# Debug start
ls -ltrh
echo "openvpn --config grosso_${OFFICE}.ovpn --auth-user-pass auth.txt --daemon"
# Debug end
openvpn --config grosso_${OFFICE}.ovpn --auth-user-pass auth.txt --daemon

cd mount/
ansible-playbook -i hosts ${PHASE}-computers.yml --vault-password-file vault_password