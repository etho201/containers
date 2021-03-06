# Container with Ansible and OpenVPN

### This creates a Docker image complete with OpenVPN and Ansible (with pywinrm) so you can easily run playbooks on a remote location after connecting to a VPN.

There are 2 options to get up and running. Docker-compose is simple because it builds and runs the container in one step, but the volume (mounts) location is not as flexible.

I prefer the traditional Docker method in this case, because once you build the image, all you need to do is `cd` into whatever directory you want to mount and then run the container. All of your Ansible files (hosts, playbooks, and roles) will be available within the container.

>**NOTE:** Place your *.ovpn files into the build directory before building.

>**TIP:** For ease of logging in, add an `auth.txt` into the build directory with the OpenVPN username and password on separate lines.

## :whale2: Docker Compose

1. Modify the volume location in docker-compose.yml, then run:
    ```
    docker-compose up -d
    ```
2. Exec into the container using `bash`:
    ```
    docker exec -it ansible-vpn bash
    ```
---

## :whale: Docker

1. Build the image with:
    ```
    docker build -t etechonomy/ansible-vpn .
    ```

2. Change directory into any desired mount point and run the container:
    ```bash
    cd $DATA_DIR
    ```
    ```bash
    docker run --cap-add=NET_ADMIN --device /dev/net/tun:/dev/net/tun --mount type=bind,source=$(pwd),target=/tmp/mount -w /tmp -td -e 'PS1=[\u@\h \W]\$ ' --hostname ansible --name ansible-vpn etechonomy/ansible-vpn
    ```
    >**NOTE:** `$DATA_DIR` is any directory you want to mount from your host machine in order to make it accessible within the container.

3. Exec into the container using `bash`:
    ```
    docker exec -it vpn1 bash
    ```

---

## :earth_americas: Connect to VPN

Once inside the container, connect to a VPN by running:

```bash
openvpn --config *.ovpn --daemon
```

If you have an `auth.txt` file available, run this instead:
```bash
openvpn --config *.ovpn --auth-user-pass auth.txt --daemon
```