# Containers

## Share data between host and container:

1. Change directory into any desired mount point and run the container:
    ```bash
    cd $DATA_DIR
    ```
    >**NOTE:** `$DATA_DIR` is any directory you want to mount from your host machine in order to make it accessible within the container.

---

## Launching general purpose OS containers:

### Alpine Linux

1. Change directory into any desired mount point (see `$DATA_DIR` above) and run the container:
    ```bash
    docker run --mount type=bind,source=$(pwd),target=/root -w /root -td --hostname alpine1 --name alpine1 alpine
    ```

2. Exec into the container using `ash` or `sh`:
    ```
    docker exec -it alpine1 sh
    ```
---

### Arch Linux

1. Change directory into any desired mount point (see `$DATA_DIR` above) and run the container:
    ```bash
    docker run --mount type=bind,source=$(pwd),target=/root -w /root -td --hostname arch1 --name arch1 archlinux
    ```

2. Exec into the container using `bash`:
    ```
    docker exec -it arch1 bash
    ```
---

### Oracle Linux

1. Change directory into any desired mount point (see `$DATA_DIR` above) and run the container:
    ```bash
    docker run --mount type=bind,source=$(pwd),target=/root -w /root -td --hostname oralinux1 --name oralinux1 oraclelinux
    ```

2. Exec into the container using `bash`:
    ```
    docker exec -it oralinux1 bash
    ```
---

### Ubuntu 20.04

1. Change directory into any desired mount point (see $DATA_DIR above) and run the container:
    ```bash
    docker run --mount type=bind,source=$(pwd),target=/root -w /root -td --hostname ubuntu --name ubuntu1 ubuntu:20.04
    ```

2. Exec into the container using `bash`:
    ```
    docker exec -it ubuntu1 bash
    ```
---

### OpenSUSE

1. Change directory into any desired mount point (see `$DATA_DIR` above) and run the container:
    ```bash
    docker run --mount type=bind,source=$(pwd),target=/root -w /root -td --hostname opensuse --name opensuse1 opensuse/tumbleweed
    ```

2. Exec into the container using `bash`:
    ```
    docker exec -it opensuse1 bash
    ```
    
---

### Centos

1. Change directory into any desired mount point (see `$DATA_DIR` above) and run the container:
    ```bash
    docker run --mount type=bind,source=$(pwd),target=/root -w /root -td --hostname centos --name centos1 centos:latest
    ```

2. Exec into the container using `bash`:
    ```
    docker exec -it centos1 bash
    ```

---

### Docker in Docker

1. Change directory into any desired mount point (see `$DATA_DIR` above) and run the container:
    ```bash
    docker run --privileged -e DOCKER_TLS_CERTDIR=/certs --mount type=bind,source=$(pwd),target=/root -w /root --name dind -td docker:dind
    ```

2. Exec into the container using `ash` or `sh`:
    ```
    docker exec -it dind sh
    ```
