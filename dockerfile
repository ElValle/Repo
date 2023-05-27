FROM debian:latest AS builder
RUN set -e && \
    apt-get update && \
    apt-get install -y wget gcc make libpcre3-dev zlib1g-dev && \
    wget http://nginx.org/download/nginx-1.22.1.tar.gz && \
    tar xzvf nginx-1.22.1.tar.gz && \
    cd nginx-1.22.1 && \
    ./configure && \
    make && \
    make install

FROM debian:latest
WORKDIR /usr/local/nginx/sbin
COPY --from=builder /usr/local /usr/local
CMD ["./nginx", "-g", "daemon off;"]