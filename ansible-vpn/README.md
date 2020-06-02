# Container with Ansible and OpenVPN

### This creates a Docker image complete with OpenVPN and Ansible so you can easily run playbooks on a remote location after connecting to a VPN.

There are 2 options to get up and running. Docker-compose is simple because it builds and runs the container in one step, but the volume (mounts) location is not as flexible.

I prefer the traditional Docker method in this case, because once you build the image, all you need to do is `cd` into whatever directory you want to mount and then run the container.

>**NOTE:** Place your *.ovpn files into the build directory before building.

## Docker Compose

1. Modify the volume location in docker-compose.yml, then run:
    ```
    docker-compose up -d
    ```
2. Exec into the container using `ash` or `sh`:
    ```
    docker exec -it vpn1 sh
    ```
---

## Docker

1. Build the image with:
    ```
    docker build -t etechonomy/ansible-vpn .
    ```

2. Change directory into any desired mount point and run the container:
    ```bash
    cd $DATA_DIR
    ```
    ```bash
    docker run --cap-add=NET_ADMIN --device /dev/net/tun:/dev/net/tun --mount type=bind,source=$(pwd),target=/root/mount -w /root -td -e 'PS1=\\h:[\\w\\$$]# ' --hostname vpn1 --name vpn1 etechonomy/ansible-vpn
    ```
    >**NOTE:** `$DATA_DIR` is any directory you want to mount from your host machine in order to make it accessible within the container.

3. Exec into the ocntainer using `ash` or `sh`:
    ```
    docker exec -it vpn1 sh
    ```

---

## Connect to VPN

Once inside the container, connect to a VPN by running:

```
# openvpn --config *.ovpn
```