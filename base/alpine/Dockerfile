# Copyright (c) 2022 Unately
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

FROM --platform=$TARGETOS/$TARGETARCH alpine:latest

LABEL maintainer="hello@unately.com"
LABEL org.opencontainers.image.source https://github.com/upackages/gears
LABEL org.opencontainers.image.description "The base execute Alpine Docker Image by Unately for Pterodactyl."
LABEL org.opencontainers.image.licenses=MIT

RUN apk add --update --no-cache ca-certificates tzdata \
	&& adduser -D -h /home/container container

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh
CMD [ "/bin/ash", "/entrypoint.sh" ]
