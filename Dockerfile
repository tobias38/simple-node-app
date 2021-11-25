FROM node:14-alpine

EXPOSE 3000

# https://github.com/krallin/tini
RUN apk add --no-cache tini

WORKDIR /usr/src/app

COPY package.json package-lock*.json ./

RUN npm ci && npm cache clean --force

COPY . .

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["node", "index.js"]