FROM python:3.8-slim

RUN apt-get -y update 
RUN apt-get install -y build-essential
RUN apt-get install -y --no-install-recommends libssl-dev libffi-dev libsasl2-dev libldap2-dev libpq-dev

RUN pip install --no-cache-dir pandas==1.1.0 numpy==1.19.1

RUN apt-get install -y --no-install-recommends zlib1g-dev libjpeg-dev
RUN pip install pillow==7.2.0 psycopg2-binary==2.8.5

RUN pip install --no-cache-dir apache-airflow[crypto,celery,postgres]==1.10.11

RUN apt-get install -y --no-install-recommends libblas3 liblapack3 liblapack-dev libblas-dev libatlas-base-dev gfortran
RUN pip install --no-cache-dir \
        scipy==1.5.2 \
        dask \
        numba \
        bokeh \
        scikit-learn==0.23.2

RUN apt-get install -y libgomp1 libaio-dev libaio1 tzdata
RUN pip install --no-cache-dir xgboost==1.1.1

COPY req-dev.txt requirements.txt
RUN pip install -r requirements.txt

#COPY . /app
