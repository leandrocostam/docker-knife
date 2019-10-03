FROM debian:jessie

LABEL maintainer="leandrocostam@gmail.com"

RUN apt-get update \
    && apt-get install -y traceroute \
    curl \
    wget \
    dnsutils \
    netcat-openbsd \
    jq \
    nmap \ 
    net-tools \
    mtr \
    iperf3 \
    git \
    && rm -rf /var/lib/apt/lists/*

COPY Dockerfile /Dockerfile
LABEL org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.vcs-type="Git" \
      org.label-schema.vcs-url="https://github.com/leandrocostam/docker-knife"
