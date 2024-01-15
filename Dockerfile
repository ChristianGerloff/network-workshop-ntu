FROM python:3.11.3-slim-buster
ENV PYTHONPATH=${PYTHONPATH}:${PWD} 
RUN apt-get update && apt-get install -y \
    git gcc

RUN mkdir /networkworkshop
COPY . /networkworkshop
WORKDIR /networkworkshop