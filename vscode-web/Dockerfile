FROM ubuntu:22.04

# timezone
RUN apt update && apt install -y tzdata; \
    apt clean;

# sshd
RUN mkdir /run/sshd; \
    apt install -y rsync git bash curl zip vim php build-essential; \
    apt clean;

ENV TZ=America/New_York

COPY files/create-user /usr/local/bin/

RUN /usr/local/bin/create-user "web:donotuse:33:33"

RUN curl -fsSL https://code-server.dev/install.sh | sh

COPY files/entrypoint /

EXPOSE 8080

USER web

ENTRYPOINT ["/entrypoint"]
