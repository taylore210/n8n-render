FROM n8nio/n8n:latest

RUN mkdir -p /data && chown -R node:node /data

USER node
WORKDIR /data

CMD ["n8n"]

