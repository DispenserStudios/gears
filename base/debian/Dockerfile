# Copyright (c) 2022 Unately
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

FROM --platform=$TARGETOS/$TARGETARCH debian:buster-slim

LABEL maintainer="hello@unately.com"
LABEL org.opencontainers.image.source https://github.com/upackages/gears
LABEL org.opencontainers.image.description "The base execute Debian Docker Image by Unately for Pterodactyl."
LABEL org.opencontainers.image.licenses=MIT


RUN apt update && apt upgrade -y \
	&& apt install -y gcc g++ libgcc1 libc++-dev gdb libc6 git wget curl tar zip unzip binutils xz-utils liblzo2-2 cabextract iproute2 net-tools netcat telnet libatomic1 libsdl1.2debian libsdl2-2.0-0 \
	libfontconfig libicu63 icu-devtools libunwind8 libssl-dev sqlite3 libsqlite3-dev libmariadbclient-dev libduktape203 locales ffmpeg gnupg2 apt-transport-https software-properties-common ca-certificates tzdata \
	liblua5.3 libz-dev rapidjson-dev \
	&& update-locale lang=en_US.UTF-8 \
	&& dpkg-reconfigure --frontend noninteractive locales \
	&& useradd -m -d /home/container -s /bin/bash container

USER        container
ENV         USER=container HOME=/home/container
ENV         DEBIAN_FRONTEND noninteractive

WORKDIR     /home/container

COPY ./entrypoint.sh /entrypoint.sh
CMD [ "/bin/bash", "/entrypoint.sh" ]
