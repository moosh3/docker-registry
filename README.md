# Deploying a private Docker registry

Prereq - Docker:

```
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
$ sudo apt-get update
$ sudo apt-get install docker-ce
$ sudo -H pip install docker-compose
```

## Firewall

**Inbound rules**:

- SSH/TCP/22
- HTTPS/TCP/443
- HTTP/TCP/80 # For letsencrypt certificates

**Outbound rules**:

- ICMP
- ALL TCP
- ALL UDP
