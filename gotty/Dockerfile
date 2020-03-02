FROM golang:alpine3.8 as gottybuilder
RUN apk add --update git && GOPATH=/tmp/gotty go get github.com/yudai/gotty

FROM alpine:3.8

RUN apk update && \
    apk add --virtual .build-deps && \
    apk add nmap nmap-ncat openssl socat openssh bash curl jq python py-pip groff less && \
    rm -rf /var/cache/apk/*

COPY --from=gottybuilder /tmp/gotty/bin/gotty /usr/local/bin/

COPY run.sh /run.sh
EXPOSE 8080
ENTRYPOINT [ "/run.sh" ]

