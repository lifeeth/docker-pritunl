# Pritunl
# 

FROM ubuntu:13.10

MAINTAINER Praneeth Bodduluri <lifeeth@resin.io>

RUN apt-get update -q
RUN apt-get install -y software-properties-common python-software-properties 

RUN add-apt-repository ppa:pritunl/ppa
RUN apt-get update -q
RUN apt-get install -y pritunl

RUN echo "#!/bin/bash" > /bin/customrun
RUN echo "/bin/rm /var/run/pritunl.pid" >> /bin/customrun 
RUN echo "/usr/bin/pritunl --daemon --pidfile /var/run/pritunl.pid" >> /bin/customrun 
RUN echo "/usr/bin/tail -f /var/log/pritunl.log" >> /bin/customrun
RUN chmod a+x /bin/customrun

CMD ["/bin/customrun"]

EXPOSE 9700
EXPOSE 1194
EXPOSE 11194


