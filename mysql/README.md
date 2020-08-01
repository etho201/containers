# MySQL Database

This docker-compose file launches a new MySQL database instance. The database will be accessible on port `3306`. Before running, be sure to change the username and passwords (see [docker-compose.yml](docker-compose.yml)) assigned to the database.

## Getting Started:
Clone this repo, then create a [.env file](.env) and place it in the same directory as the [docker-compose.yml](docker-compose.yml). Paste the following content into the .env file and input/change variables according to your preferences.

```bash
# General / common settings
VOLUME_DIR=/home/USERNAME/Documents/Docker/volumes
```

This container runs on a pre-defined network called `backend`. If you don't already have it created, run this:
```bash
docker network create backend
```

Then simply run the docker-compose file to start the database:

```bash
docker-compose up -d
```
