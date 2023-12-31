# BUILD:
#   docker build -t local/anslookup --network host --build-args USER=$USER .
# RUN:
#   docker run -it --rm \
#          --name "$NAME" \
#          --network host \
#          -v $(pwd):$HOME/anslookup \
#          local/anslookup $@ 2> /dev/null
FROM python:3-alpine as builder

WORKDIR /build

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    git \
    && git clone https://github.com/yassineaboukir/Asnlookup.git \
    && cd /build/Asnlookup \
    && pip install pyinstaller \
    && pip install -r requirements.txt \
    && pyinstaller -F asnlookup.py 


FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=builder /build/Asnlookup/dist/asnlookup /usr/bin/

WORKDIR /asnlookup

ENTRYPOINT ["asnlookup"]