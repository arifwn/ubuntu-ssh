FROM ubuntu:22.04

# timezone
RUN apt update && apt install -y tzdata; \
    apt clean;

# sshd
RUN mkdir /run/sshd; \
    apt install -y zsh nodejs iputils-ping dnsutils rsync git bash curl zip vim php python3 python3-venv; \
    apt clean;

ENV TZ=America/New_York

COPY files/create-user /usr/local/bin/
COPY files/.zshrc /etc/user-zshrc

RUN /usr/local/bin/create-user "web:donotuse:33:33"

RUN curl -fsSL https://code-server.dev/install.sh | sh

COPY files/entrypoint /

EXPOSE 8080

USER web

ENTRYPOINT ["/entrypoint"]
