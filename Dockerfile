FROM node:22-bookworm as node-n8n

RUN npm install n8n -g


FROM node-n8n as node-n8n-puppeteer

RUN npm install puppeteer-extra-plugin-user-preferences puppeteer-extra-plugin-user-data-dir -g

USER node
WORKDIR /home/node/.n8n/nodes

RUN npm install n8n-nodes-puppeteer


FROM node-n8n-puppeteer

CMD ["n8n"]
