FROM golang:1.16 AS builder
WORKDIR /
COPY ./go.mod ./go.mod
RUN go mod download
COPY . .
RUN go get && \
    CGO_ENABLED=0 go build -o app

FROM scratch as app
COPY --from=builder /app /app
EXPOSE 9000
ENTRYPOINT ["/app"]
