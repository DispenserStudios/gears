# Copyright (c) 2023 Joshua Schmitt
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

FROM --platform=$TARGETOS/$TARGETARCH alpine:latest

LABEL maintainer="hello@unately.com"
LABEL org.opencontainers.image.source https://github.com/upackages/gears
LABEL org.opencontainers.image.description "The installer image based on Alpine Linux"
LABEL org.opencontainers.image.licenses=MIT

RUN apk add --update --no-cache ca-certificates curl git jq wget
