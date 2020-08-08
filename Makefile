.PHONY: build run

build:
	docker build --rm -t registry.local:5000/airflow-local:latest -f Dockerfile .

run:
	docker-compose -f docker-compose.yaml up --always-recreate-deps --remove-orphans
