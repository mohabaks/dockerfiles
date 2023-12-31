FROM node:20-alpine3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

WORKDIR /app

RUN npm install js-beautify@next

ENV PATH=/app/node_modules/.bin:$PATH

WORKDIR /js-beautify

ENTRYPOINT ["js-beautify"]