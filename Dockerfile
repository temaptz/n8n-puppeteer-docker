FROM node:22-bookworm-slim as node

RUN apt-get update && apt-get install -y \
    chromium \
    chromium-driver \
    git

RUN apt-get clean


FROM node as node-n8n

RUN npm install n8n -g


FROM node-n8n as node-n8n-puppeteer

USER node
WORKDIR /home/node/.n8n/nodes

RUN npm install n8n-nodes-puppeteer --legacy-peer-deps


FROM node-n8n-puppeteer

ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV N8N_RUNNERS_ENABLED=true
ENV NODE_ENV=production
ENV N8N_SECURE_COOKIE=false
ENV N8N_LOG_LEVEL=debug
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

CMD ["n8n"]
