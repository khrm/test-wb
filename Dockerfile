# Dockerfile for lighttpd

FROM alpine

RUN apk add --update --no-cache \
	monkey \
  && rm -rf /var/cache/apk/*

EXPOSE 8080

CMD monkey "8080"


