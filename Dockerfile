ARG ALPINE_VERSION=latest
FROM alpine:${ALPINE_VERSION}

ENV https_proxy=http://XXXX@YYYY.com:8080/

RUN apk add fio --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community

ENV https_proxy=''
