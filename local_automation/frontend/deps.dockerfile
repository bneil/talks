FROM node:10.23.1-alpine3.9

WORKDIR /app

#COPY package.json package.json
COPY . package.json
RUN ls
RUN npm install
