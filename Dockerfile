FROM debian:bookworm

LABEL org.opencontainers.image.source = "https://github.com/gottaloveit/base"
LABEL org.opencontainers.image.version=1.1.0

RUN apt update && \
    apt upgrade -y && \
    apt install -y wget supervisor && \
    rm -rf /var/lib/apt/lists/* && \
    apt update 
