FROM golang:1.16
WORKDIR /
COPY ./go.mod ./go.mod
RUN go mod download
COPY . .
RUN go get && \
    CGO_ENABLED=0 go build -o app

EXPOSE 8080
ENTRYPOINT ["/app"]