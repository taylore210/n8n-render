FROM n8nio/n8n:latest

# Crée le répertoire n8n (déjà présent dans l'image mais on sécurise)
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n

# On copie l'environnement Railway (tu dois avoir une section Variables sur Railway pour ça)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=adminpassword
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_HOST=n8n-db
ENV DB_POSTGRESDB_PORT=5432
ENV DB_POSTGRESDB_DATABASE=railway
ENV DB_POSTGRESDB_USER=postgres
ENV DB_POSTGRESDB_PASSWORD=ton_mdp_postgres
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV N8N_HOST=0.0.0.0
ENV GENERIC_TIMEZONE=Europe/Paris

WORKDIR /home/node/.n8n
USER node
CMD ["n8n"]
