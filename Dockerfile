FROM ubuntu:18.04

RUN mkdir /builds && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y python3 python3-six python3-pip curl zip && \
    pip3 install gupload && \
    apt-get purge -y python3-pip && \
    apt-get autoclean -y && \
    apt-get autoremove -y && \
    apt-get clean

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ENV GOOGLE_APPLICATION_CREDENTIALS=/tmp/credentials.json

WORKDIR /builds
