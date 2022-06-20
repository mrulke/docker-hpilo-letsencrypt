FROM alpine:3.16.0
RUN apk add --no-cache ca-certificates bash coreutils lego openssl jq curl
VOLUME /.lego
ADD le-hpilo.sh /
ENTRYPOINT ["/le-hpilo.sh"]
