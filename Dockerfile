FROM n8nio/n8n:latest
FROM n8nio/n8n:latest

RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n

COPY .env /home/node/.n8n/
WORKDIR /home/node/.n8n

USER node

CMD ["n8n"]
