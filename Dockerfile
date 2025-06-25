FROM n8nio/n8n:latest

# Crée le dossier de config
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n

WORKDIR /home/node/.n8n

USER node

CMD ["n8n"]
