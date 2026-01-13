FROM nginx:alpine

RUN mkdir -p /docker-entrypoint.d && echo "apk add --no-cache openssh sudo; sudo chmod 400 /root/.ssh/id_ed25519" > /docker-entrypoint.d/00-ssh.sh && chmod +x /docker-entrypoint.d/00-ssh.sh
