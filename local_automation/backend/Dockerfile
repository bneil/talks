# ======================== [ Create GoLang Builder ]
FROM golang:1.14 AS builder

COPY . /app

WORKDIR /app

RUN make build && ls bin/

# ======================== [ Create Final ]
FROM gcr.io/distroless/base

WORKDIR /app

COPY --from=builder /app/bin/backend /app/backend

ENTRYPOINT ["/app/backend"]

