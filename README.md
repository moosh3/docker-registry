# Deploying a private Docker registry

## Firewall

**Inbound rules**:

- SSH/TCP/22
- HTTPS/TCP/443
- HTTP/TCP/80 # For letsencrypt certificates

**Outbound rules**:

- ICMP
- ALL TCP
- ALL UDP
