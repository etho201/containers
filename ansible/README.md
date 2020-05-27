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

Run the bootstrap.yml playbook
```
ansible-playbook bootstrap.yml -u root -k
```
> **NOTE:** SSH Password: alarm

> **NOTE:** Need to run this twice because Ansible only evaluates ansible.cfg once at the beginning

Test Ansible
```
ansible all -u admin -m ping
```

Clean up:
```
docker kill arch1 arch2 arch3
docker rm arch1 arch2 arch3
```