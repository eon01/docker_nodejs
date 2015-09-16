FROM ubuntu:14.04
MAINTAINER  Aymen El Amri


RUN apt-get dist-upgrade -y

RUN DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade
#RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-software-properties
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
RUN DEBIAN_FRONTEND=noninteractive add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs


RUN mkdir -p /var/www/smartwifi/


ADD app.js /var/www/app.js

CMD ["/usr/bin/node", "/var/www/app.js"] 
