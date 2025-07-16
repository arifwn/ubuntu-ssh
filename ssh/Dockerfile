FROM ubuntu:22.04

# timezone
RUN apt update && apt install -y tzdata; \
    apt clean;

# sshd
RUN mkdir /run/sshd; \
    apt install -y openssh-server rsync bash curl zip vim zsh nodejs python3 python3-venv php-fpm php-cli iputils-ping dnsutils; \
    apt clean;

ENV TZ=America/New_York

COPY files/sshd_config /etc/ssh/sshd_config
COPY files/create-user /usr/local/bin/
COPY files/entrypoint /
COPY files/.zshrc /etc/user-zshrc
COPY files/zed-settings.json /home/web/.config/zed/settings.json

EXPOSE 22

ENTRYPOINT ["/entrypoint"]
