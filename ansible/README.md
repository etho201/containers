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
ssh-keygen -t rsa -b 4096 -C "user@email.com"
```

Copy them to remote containers
```
ssh-copy-id -i ~/.ssh/id_rsa.pub arch2
ssh-copy-id -i ~/.ssh/id_rsa.pub arch3
```
> **NOTE:** Root Password: alarm

Test Ansible
```
ansible all -m ping
```

Clean up:
```
docker kill arch1 arch2 arch3
docker rm arch1 arch2 arch3
```