#!/bin/sh -l

# Debug start
ls -ltrh
echo "openvpn --config grosso_${OFFICE}.ovpn --auth-user-pass auth.txt --daemon"
echo "ansible-playbook -i hosts ${PHASE}-computers.yml --vault-password-file vault_password"
# Debug end

openvpn --config grosso_${OFFICE}.ovpn --auth-user-pass auth.txt --daemon
ansible-playbook -i hosts ${PHASE}-computers.yml --vault-password-file vault_password