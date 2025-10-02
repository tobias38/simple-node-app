FROM node:24-slim

EXPOSE 3000

WORKDIR /usr/src/app

COPY package.json package-lock*.json ./

RUN npm ci && npm cache clean --force

COPY . .

CMD ["node", "index.js"]