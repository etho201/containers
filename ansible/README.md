# Ansible Testing

## Create a quick test environment for Ansible

Run the docker-compose command to build the containers
```
docker-compose -f docker-compose-arch.yml up -d
```

Connect to arch1
```
docker exec -it arch1 /bin/bash
```

Create SSH keys
```
ssh-keygen -t ed25519
```

Run the bootstrap.yml playbook
```
ansible-playbook bootstrap.yml -k --extra-vars "remote_user=root"
```
> **NOTE:** SSH Password: alarm

Test Ansible
```
ansible all -m ping
```

Clean up:
```
docker kill arch1 arch2 arch3
docker rm arch1 arch2 arch3
```