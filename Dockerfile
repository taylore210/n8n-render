


FROM n8nio/n8n:latest

USER root

ENV N8N_USER_FOLDER=/data

RUN mkdir -p /data && \
    chown -R node:node /data

COPY .env /data/

USER node

CMD ["n8n"]

