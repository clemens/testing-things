FROM nginx:alpine

RUN apk add --no-cache openssh

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
