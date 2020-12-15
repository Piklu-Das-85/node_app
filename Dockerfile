FROM alpine:3.8

LABEL piklu <pikluranjandas@gmail.com>

WORKDIR /usr/apps/hello-docker/

RUN apk add --update bash  \
        nodejs  \
        --update nodejs nodejs-npm  && npm install -g http-server \
         && rm -rf /var/cache/apk/*

ADD . /usr/apps/hello-docker/

CMD ["http-server", "-s"]
