FROM node:alpine

MAINTAINER ye <yezhu1@mit.edu>

WORKDIR /app

COPY server.js /app/server.js
COPY package.json /app/package.json
RUN npm install

EXPOSE 3002

CMD npm start

