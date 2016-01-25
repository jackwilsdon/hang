FROM phusion/baseimage:latest

MAINTAINER "Jack Wilsdon <jack.wilsdon@gmail.com>"

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y \
    make \
    nasm

ADD hang /usr/src/hang

RUN cd /usr/src/hang && \
    make && \
    make install
