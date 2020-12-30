FROM openjdk:8u212-jre-alpine

ENV DIGDAG_VERSION 0.9.42
WORKDIR /src

RUN apk add --no-cache curl gettext docker && \
  curl -o /usr/local/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-${DIGDAG_VERSION}" && \
  chmod +x /usr/local/bin/digdag
