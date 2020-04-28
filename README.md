# Airflow Celery Setup

## Prerequisites

1. Postgres server
2. Redis server

## Commands involved

1. `airflow initdb`
2. `airflow webserver`
3. `airflow scheduler`
4. `airflow flower`
5. `airflow worker`

### Postgres setup

`docker run -e POSTGRES_PASSWORD=mysecretpassword -e POSTGRES_USER=postgres -e POSTGRES_DB=airflow -e PGDATA=/var/lib/postgresql/data/pgdata -v $(pwd)/data:/var/lib/postgresql/data --network host postgres`

### Redis setup

`docker run -v $(pwd)/redis_data:/data --network host redis redis-server`

### Docker Image build

`docker build --rm -t airflow-local .`

### Usage for above commands

1. `docker run -it --net=host -e AIRFLOW_HOME=/app -v $(pwd):/app airflow-local airflow initdb`
2. `docker run -it --net=host -e AIRFLOW_HOME=/app -v $(pwd):/app airflow-local airflow webserver`
3. `docker run -it --net=host -e AIRFLOW_HOME=/app -v $(pwd):/app airflow-local airflow scheduler`
4. `docker run -it --net=host -e AIRFLOW_HOME=/app -v $(pwd):/app airflow-local airflow flower`
5. `docker run -it --net=host -e AIRFLOW_HOME=/app -e C_FORCE_ROOT=true -v $(pwd):/app airflow-local airflow worker`

## Known Issues

- <https://github.com/puckel/docker-airflow/issues/535>
