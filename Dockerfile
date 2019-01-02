# Container for syslog-ng

FROM alpine:latest
MAINTAINER Evgeniy Shumilov <evgeniy.shumilov@gmail.com>

RUN apk update && apk add syslog-ng syslog-ng-json

VOLUME configs /configs
VOLUME scripts /scripts

ENV PS1='$([ `whoami` == root ] && echo "\\[\\e[1;31m\\]" || "\\[\\e[1;32m\\]")\u\[\e[1;33m\]@\[\e[1;32m\]\h \[\e[1;33m\][\[\e[1;36m\]$([ $? -eq 0 ] && echo "\\[\\e[1;32m\\]$?" || echo "\\[\\e[1;31m\\]$?")\[\e[1;33m\]]\[\e[0;33m\]:\[\e[1;33m\][\[\e[1;34m\]\t\[\e[1;33m\]]\[\e[0;33m\]:\[\e[1;33m\][\[\e[1;36m\]\w\[\e[1;33m\]\\[\e[1;33m\]]\[\e[1;31m\]$([ `whoami` == root ] && echo "\\[\\e[1;31m\\]" || "\\[\\e[1;32m\\]")\$ \[\e[0m\]'

EXPOSE 0.0.0.0:514:514/udp
EXPOSE 0.0.0.0:601:601

ENTRYPOINT /scripts/entrypoint
