FROM golang:1.21.1-alpine
WORKDIR D:\heremap\go
COPY go.mod go.sum ./
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build  -o /out/main ./
ENTRYPOINT ["/out/main"]
EXPOSE 8100