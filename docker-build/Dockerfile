# syntax=docker/dockerfile:experimental
FROM ubuntu:20.04 AS develop
LABEL stage=toolchain

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt install -y build-essential pkg-config m4 patch python perl wget git ccache equivs devscripts

WORKDIR /root/src

CMD /bin/bash -c ./build.sh
