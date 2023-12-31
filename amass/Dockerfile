# BUILD:
#   docker build -t local/amass --network host --build-arg USER=$USER .
# RUN:
#   docker run -it --rm \
#          --name "$NAME" \
#          --network host \
#          -h "$NAME" \
#          -v $(pwd):$HOME/amass \
#          local/amass $@ 2> /dev/null
FROM golang:alpine3.18 AS builder

RUN go install -v github.com/owasp-amass/amass/v3/...@master


FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=builder /go/bin/amass /bin/amass

RUN apk add --no-cache ca-certificates

WORKDIR /amass

ENTRYPOINT ["amass"]