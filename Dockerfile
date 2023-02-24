FROM ubuntu:22.04

# timezone
RUN apt update && apt install -y tzdata; \
    apt clean;

# sshd
RUN mkdir /run/sshd; \
    apt install -y openssh-server rsync bash curl zip; \
    apt clean;

ENV TZ=America/New_York

COPY files/sshd_config /etc/ssh/sshd_config
COPY files/create-user /usr/local/bin/
COPY files/entrypoint /

EXPOSE 22

ENTRYPOINT ["/entrypoint"]