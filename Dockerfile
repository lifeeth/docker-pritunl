# Pritunl
# 

FROM ubuntu:14.04

MAINTAINER Praneeth Bodduluri <lifeeth@resin.io>

RUN apt-get update -q
RUN apt-get install -y software-properties-common python-software-properties 

RUN add-apt-repository ppa:pritunl/ppa
RUN apt-get update -q
RUN apt-get install -y pritunl

ADD entry.sh /bin/entry.sh

EXPOSE 9700
EXPOSE 1194
EXPOSE 11194

ENTRYPOINT ["/bin/entry.sh"]

CMD ["/usr/bin/tail", "-f","/var/log/pritunl.log"]




