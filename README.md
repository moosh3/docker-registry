# Deploying a private Docker registry

1. `git clone git@github.com:aleccunningham/docker-registry.git /opt/registry`

2. `cd /opt/registry && cp /etc/letsencrypt/live/$host/fullchain.pem ./certs/$host.crt`

3. `cp /etc/letsencrypt/live/$host/privkey.pem ./certs/$host.key`

4. `REG_PASSWORD=string make htpasswd`

5. `docker-compose up -d`

## Obtaining certificates

1. `git clone https://github.com/letsencrypt/letsencrypt`

2. `cd letsencrypt && certbot-auto certonly --standalone --renew-by-default -d $host`

## Firewall

**Inbound rules**:

- SSH/TCP/22
- HTTPS/TCP/443
- HTTP/TCP/80 # For letsencrypt certificates

**Outbound rules**:

- ICMP
- ALL TCP
- ALL UDP
