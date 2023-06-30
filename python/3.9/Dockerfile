# Copyright (c) 2022 Unately
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

FROM --platform=$TARGETOS/$TARGETARCH python:3.9-alpine

LABEL maintainer="hello@unately.com"
LABEL org.opencontainers.image.source https://github.com/upackages/gears
LABEL org.opencontainers.image.description "Python 3.9 Docker build by Unately for Pterodactyl."
LABEL org.opencontainers.image.licenses=MIT

RUN apk add --update --no-cache cmake make ca-certificates curl ffmpeg g++ gcc git openssl sqlite tar tzdata \
	&& adduser -D -h /home/container container

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY ./../entrypoint.sh /entrypoint.sh
CMD [ "/bin/ash", "/entrypoint.sh" ]
