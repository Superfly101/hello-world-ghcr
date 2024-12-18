FROM alpine

LABEL org.opencontainers.image.source=https://github.com/superfly101/hello-world-ghrc
LABEL org.opencontainers.image.description="Hello World Docker Image"
LABEL org.opencontainers.image.licenses=MIT

RUN apk add --no-cache bash

WORKDIR /app

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]