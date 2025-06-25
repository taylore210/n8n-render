
FROM n8nio/n8n:latest

USER root
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n

USER node

COPY --chown=node:node .env /home/node/.n8n/

WORKDIR /home/node/.n8n

CMD ["n8n"]
