# QGIS Server Docker image for simple Postgres Access

This Docker image builds upon the [Camptocamp QGIS Server Docker image](https://github.com/camptocamp/docker-qgis-server). It adds a simple way to access QGIS projects stored in a PostgreSQL database.

It is required to mount a pg_service file to the container provide the environment variable `PG_SERVICE_NAME`.

Example compose file:

```yaml
services:
  qgis-server:
    image: ghcr.io/siticom/docker-qgis-server-postgres
    environment:
      - PG_SERVICE_NAME=my_service_name
      - QGIS_SERVER_PROJECT_CACHE_STRATEGY=periodic
      - PGSERVICEFILE=/home/pg_service.conf
    volumes:
      - ./pg_service.conf:/home/pg_service.conf
    ports:
     - "8083:80"
```
