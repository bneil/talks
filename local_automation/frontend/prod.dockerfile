FROM node:10.23.1-alpine3.9 AS builder

COPY . /app

WORKDIR /app

RUN npm install && npm run build

## --

FROM abhin4v/hastatic:latest
COPY --from=builder /app/public /opt/frontend
WORKDIR /opt/frontend
CMD ["/usr/bin/hastatic"]
