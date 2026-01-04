# Linux Networking

## Ports
ss -tulpn

## Firewall
firewall-cmd --list-all
firewall-cmd --add-service=http --permanent
firewall-cmd --add-port=8080/tcp --permanent
firewall-cmd --reload

## Hostname
hostnamectl
hostnamectl set-hostname rocky-net-lab

## Routing
ip route
ip route del default
ip route add default via 10.0.2.2 dev enp0s3

## DNS
/etc/resolv.conf
nslookup google.com

## Troubleshooting Order
IP → Route → DNS → Firewall → Ports
