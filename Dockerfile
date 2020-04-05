FROM ubuntu:latest

RUN apt-get update && apt-get install nano

RUN apt-get update -y \
  && apt-get install -y --no-install-recommends build-essential bison flex \
  && rm -rf /var/lib/apt/lists/*
  
COPY tk-makefile /home/tk-makefile
COPY tk-bison /home/tk-bison
COPY tk-flex /home/tk-flex
COPY tk-project /home/tk-project

VOLUME /home
WORKDIR /home