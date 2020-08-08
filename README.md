# Airflow Celery Setup

This setup is based on fact that it will be used for ML workloads. Apart from airflow requirements, following packages are also installed during image build itself:

- Pandas (1.1.0)
- NumPy (1.19.1)
- SciPy (1.5.2)
- Dask
- Numba
- Scikit (0.23.2)
- XGBoost (1.1.1)

## Prerequisites

1. Docker (19.03+)
2. Docker Compose (1.26+)

## Commands involved

1. `airflow initdb`
2. `airflow webserver`
3. `airflow scheduler`
4. `airflow flower`
5. `airflow worker`

### Getting Started

- Build Image `make build`
- Run Airflow Setup `make run`

## Known Issues

- <https://github.com/puckel/docker-airflow/issues/535>
