FROM ubuntu:20.04

RUN apt-get -y update \
&& apt-get -y install nmap=7.80+dfsg1-2build1 \
netcat=1.206-1ubuntu1 \
socat=1.7.3.3-2 \
net-tools=1.60+git20180626.aebd88e-1ubuntu1 \
screen=4.8.0-1ubuntu0.1 \
traceroute=1:2.1.0-2
COPY Makefile ./Makefile

# make the container running infinite (just manual connect)
ENTRYPOINT /bin/bash
CMD ["sleep", "infinity"]