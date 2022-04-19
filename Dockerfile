FROM alpine:latest 
RUN apk update && apk upgrade
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing boinc tzdata
User root
EXPOSE 80 443 31416
WORKDIR /var/lib/boinc
ENTRYPOINT ["/usr/bin/boinc"]


