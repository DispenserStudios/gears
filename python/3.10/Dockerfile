FROM python:3.10-bullseye

LABEL maintainer="hello@unately.com"
LABEL org.opencontainers.image.source https://github.com/upackages/gears
LABEL org.opencontainers.image.description Python 3.10 Docker build by Unately for Pterodactyl.
LABEL org.opencontainers.image.licenses=MIT

RUN apt-get update -y \
    && apt-get dist-upgrade -y \
    && apt-get install -y curl ca-certificates cmake make ca-certificates curl ffmpeg g++ gcc git openssl sqlite3 tar tzdata \
    && useradd -d /home/container -m container

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY ./../entrypoint.sh /entrypoint.sh
CMD [ "/bin/bash", "/entrypoint.sh" ]
