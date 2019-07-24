FROM alpine

COPY ./README.md /README.md

RUN apk add --no-cache curl

RUN echo "/bin/sh" > /run.sh
RUN echo 'while true; do { echo -e "HTTP/1.1 200 OK\r\n$(date)\r\n\r\n<h1>hello world from $(hostname) on $(date)</h1>" |  nc -vl 8080; } done' >> /run.sh

ENTRYPOINT ["/bin/sh", "/run.sh"]

