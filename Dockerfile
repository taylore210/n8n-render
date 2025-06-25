FROM n8nio/n8n:latest

USER root

# Fix permissions on the volume-mount path to avoid EACCES
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n

COPY --chown=node:node .env /home/node/.n8n/

USER node
WORKDIR /home/node/.n8n

CMD ["n8n"]

