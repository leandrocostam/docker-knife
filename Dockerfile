FROM debian:unstable-slim

LABEL maintainer="leandrocostam@gmail.com"

RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get install -y \
    traceroute \
    curl \
    wget \
    dnsutils \
    netcat-openbsd \
    jq \
    nmap \ 
    net-tools \
    tcpdump \
    mtr \
    iperf3 \
    git \
    iproute2 \
    siege \
    apache2-utils \
    openssl \
    openssh-client \ 
    nvi \
    less \
    && rm -rf /var/lib/apt/lists/*

COPY Dockerfile /Dockerfile
LABEL org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.vcs-type="Git" \
      org.label-schema.vcs-url="https://github.com/leandrocostam/docker-knife"
