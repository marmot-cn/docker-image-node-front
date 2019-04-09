FROM node:10.15.3

RUN apk --update add tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata \
    && mkdir -p /usr/src/app

WORKDIR /usr/src/app

EXPOSE 3000

CMD [ "npm", "run", "start:prod" ]
