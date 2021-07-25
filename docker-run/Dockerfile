FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /root

RUN apt update && apt full-upgrade -y && apt install -y mc

COPY release /root/release

RUN dpkg -i /root/release/*.deb || true && apt install -f -y && rm -rf /root/release

CMD ["/bin/bash"]

#CMD ["/bin/bash", "-c", "/root/startme.sh"]
