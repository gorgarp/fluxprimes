FROM alpine:latest 
RUN apk update && apk upgrade
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing boinc tzdata
User root
EXPOSE 80 443 31416
WORKDIR /var/lib/boinc
ENTRYPOINT ["/usr/bin/boinc", "--attach_project"]
CMD ["http://www.primegrid.com/", "1490849_e597a1da9cc0d0c50baf82d032470a4a"]

