FROM alpine

COPY ./README.md README.md

CMD ["sh","-c", "echo StartingDemo && watch '{ echo -ne 'HTTP/1.0 200 OK\r\n\r\n'; cat README.md; } | nc -l -p 8080'"]
