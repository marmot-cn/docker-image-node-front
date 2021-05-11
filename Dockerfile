FROM node:16.1.0

RUN set -ex \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone 

WORKDIR /usr/src/app/server

EXPOSE 3000
