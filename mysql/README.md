

## Getting Started:
Clone this repo, then create a [.env file](.env) and place it in the same directory as the docker-compose.yml). Paste the following content into the .env file and input/change variables according to your preferences.

```bash
# General / common settings
VOLUME_DIR=/home/USERNAME/Documents/Docker/volumes
```

Then simply run the docker-compose file to start the database:

```bash
docker-compose up -d
```