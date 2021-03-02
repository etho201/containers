#!/bin/sh -l

openvpn --config grosso_${OFFICE}.ovpn --auth-user-pass auth.txt --daemon

cd mount/
ansible-playbook -i hosts ${PHASE}-computers.yml --vault-password-file vault_password