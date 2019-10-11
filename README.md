# Knife Tools Container

[![](https://images.microbadger.com/badges/version/leandrocostam/knifetools.svg)](https://microbadger.com/images/leandrocostam/knifetools "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/leandrocostam/knifetools.svg)](https://microbadger.com/images/leandrocostam/knifetools "Get your own image badge on microbadger.com")

Container based on Debian with a few utilities installed for troubleshooting:

- curl
- traceroute
- wget
- dnsutils
- netcat
- jq
- nmap
- net-tools (ifconfig, netsat, arp, rarp, route, etc)
- tcpdump
- mtr-tiny
- iperf3
- openssl / openssl-client
- nmap
- nvi
- git
- less

## How to run

Running as standalone container:
```sh
docker run -it leandrocostam/knifetools
```

Running by sharing the network namespce for the specified container (already running):
```sh
docker run -it --network=container:<containerName> leandrocostam/knifetools
```
