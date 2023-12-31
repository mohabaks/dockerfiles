# Build
FROM golang:alpine3.18 AS builder

RUN go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

# Final
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

RUN apk add --no-cache ca-certificates

COPY --from=builder /go/bin/httpx /bin/httpx

WORKDIR /httpx

ENTRYPOINT ["httpx"]
