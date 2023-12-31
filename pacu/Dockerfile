FROM python:3.9-alpine

LABEL maintainer="Rhino Assessment Team <pacu@rhinosecuritylabs.com>"

LABEL pacu.version="${ver}"

RUN apk add --no-cache aws-cli git zip \
    && cd /usr/src

# Install Pacu
RUN git clone https://github.com/RhinoSecurityLabs/pacu.git \
    && cd pacu \
    && pip install . \
    && echo 'AWS_EC2_METADATA_DISABLED=true' >> /etc/profile

WORKDIR /pacu

ENTRYPOINT ["pacu"]