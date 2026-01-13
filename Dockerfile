FROM nginx:alpine

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh && apk add --no-cache openssh

ENTRYPOINT ["sh", "/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
