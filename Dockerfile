FROM ubuntu:latest

MAINTAINER Piklu <pikluranjandas@gmail.com>

WORKDIR /usr/apps/hello-docker/

RUN apt-get -y update \
  && apt-get install -y nodejs \
  && apt-get install -y npm \

#RUN ln -s /usr/bin/nodejs /usr/bin/node........;;;;;
  && npm install -g http-server

ADD . /usr/apps/hello-docker/

#ADD index.html /usr/apps/hello-docker/index.html

CMD ["http-server", "-s"]
