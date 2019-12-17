FROM alpine

MAINTAINER Ricardo  <ajkaanbal@gmail.com>
RUN apk add --update \
    bash \
    git \
    less \
    openssh-client \
    && rm -rf /var/cache/apk/*

RUN addgroup -g 1000 gituser && \
    adduser -D -u 1000 -G gituser gituser

WORKDIR /home/gituser

USER gituser

