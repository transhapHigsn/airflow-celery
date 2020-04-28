FROM python:3.7-slim

RUN apt-get -y update 
RUN apt-get install -y build-essential libssl-dev libffi-dev libsasl2-dev libldap2-dev

COPY . /app
RUN pip install -r /app/requirements.txt