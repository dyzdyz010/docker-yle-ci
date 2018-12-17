FROM alpine:latest

LABEL maintainer="dyzdyz010@gmail.com"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories; apk update && apk add ca-certificates emacs python3; wget -qO- https://get.haskellstack.org/ | sh

WORKDIR /root
