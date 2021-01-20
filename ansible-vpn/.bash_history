openvpn --config *.ovpn --auth-user-pass auth.txt --daemon
ansible-playbook -i hosts existing-computers.yml --vault-password-file vault_password
