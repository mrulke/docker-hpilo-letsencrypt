FROM alpine:3
ENV DOMAINS="esx1ilo.wilmann.com.au" ILO_IP="192.168.1.250" 
ENV LE_EMAIL="simon@wilmann.com.au" CERT_NAME="esx1ilo.wilmann.com.au" EXPIRY_THRESHOLD=1814400 DNS_WAIT=120 CREDENTIALS_FILE="./cloudflare.ini" CSR="./cert.csr"
ENV ILO_DOMAIN=esx2ilo.wilmann.com.au
RUN apk add --no-cache ca-certificates bash coreutils lego openssl jq curl

ADD le-hpilo.sh /

VOLUME /.lego

ENTRYPOINT ["/le-hpilo.sh"]
