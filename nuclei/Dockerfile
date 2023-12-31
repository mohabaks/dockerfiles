# Stage 1
FROM golang:alpine3.18 AS build

RUN go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest

# Final
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

RUN apk add --no-cache \
    ca-certificates \
    bind-tools \
    chromium

COPY --from=build /go/bin/nuclei /bin/nuclei

WORKDIR /nuclei

ENTRYPOINT ["nuclei"]