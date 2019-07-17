# Dockerfile for lighttpd

FROM alpine

RUN apk add --update --no-cache \
	monkey \
  && rm -rf /var/cache/apk/*

RUN touch /var/run/monkey.pid

EXPOSE 8080


CMD monkey "8080"


