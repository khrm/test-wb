FROM alpine

COPY ./README.md /README.md

RUN echo "/bin/sh" > /run.sh
RUN echo "echo StartingDemo && watch '{ echo -ne 'HTTP/1.0 200 OK\r\n\r\n'; cat /README.md; } | nc -l -p 8080'" >> /run.sh

ENTRYPOINT ["/bin/sh", "/run.sh"]

