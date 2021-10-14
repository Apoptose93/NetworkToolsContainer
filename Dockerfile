FROM ubuntu

RUN apt-get -y update \
&& apt-get -y install nmap netcat socat net-tools screen
COPY Makefile ./Makefile

# make the container running infinite (just manual connect)
ENTRYPOINT /bin/bash
CMD ["sleep", "infinity"]