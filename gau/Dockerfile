# Stage 1
FROM golang:alpine3.18 AS builder

RUN go install -v github.com/lc/gau/v2/cmd/gau@latest

# Final
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

RUN apk add --no-cache ca-certificates

COPY --from=builder /go/bin/gau /bin/gau

WORKDIR /gau

ENTRYPOINT ["gau"]