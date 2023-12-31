# Stage 1
FROM golang:1.21-alpine3.18 AS build

RUN go install -v github.com/j3ssie/metabigor@latest

# Final
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

RUN apk add --no-cache ca-certificates

COPY --from=build /go/bin/metabigor /bin/metabigor

WORKDIR /metabigor

ENV ASSUME_NO_MOVING_GC_UNSAFE_RISK_IT_WITH=go1.21

ENTRYPOINT ["metabigor"]