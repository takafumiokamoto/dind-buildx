FROM alpine AS buildx

RUN apk add curl
ARG arch=amd64
RUN curl -s https://api.github.com/repos/docker/buildx/releases \
| grep 'browser_download_url' \
| grep -oE 'https.*linux-amd64' \
| head -1 \
| xargs -I{} curl -L {} --output /tmp/docker-buildx