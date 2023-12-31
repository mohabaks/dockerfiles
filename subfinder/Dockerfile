# Build
FROM golang:alpine3.18 AS builder

RUN go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest


# Release
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

RUN apk add --no-cache ca-certificates

COPY --from=builder /go/bin/subfinder /bin/subfinder

ENTRYPOINT ["subfinder"]