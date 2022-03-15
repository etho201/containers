
# The following assumes you are using the [Podman Machine](https://github.com/etho201/vagrant-boxes/tree/main/podman-machine) Vagrant Box to deploy.

1. Create a `.env` file with the following variables:

    ```bash
    cat <<EOF > .env
    PWD=/mnt$(pwd)
    EOF
    ```

2. Run `podman-compose` to bring services up:

    ```bash
    podman-compose up -d
    ```

3. Navigate to the [pgadmin url](http://192.168.56.100:5050).

    > Username: `admin@admin.com`<br>
    > Password: `root`

---

To add the database into pgadmin:

1. Click `Add New Server`

2. Input the host address: `192.168.56.100`

    > Username: `root`<br>
    > Password: `root`