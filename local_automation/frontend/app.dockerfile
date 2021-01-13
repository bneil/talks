FROM local.dev/nodedeps AS builder

COPY . /app2

WORKDIR /app2

# we can skip the install step because of
# the deps being build elsewhere
RUN npm run build && ls && ls public

## --

FROM abhin4v/hastatic:latest
COPY --from=builder /app2/public /opt/frontend
WORKDIR /opt/frontend
CMD ["/usr/bin/hastatic"]
