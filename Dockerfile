FROM ubuntu-debootstrap:trusty

RUN ls -la /usr/bin/sudo || true
RUN apt-get update && apt-get -qq -y install sudo
RUN ls -la /usr/bin/sudo || true
ADD ./patches/ /
RUN ls -la /usr/bin/sudo || true
