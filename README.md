# Deploying a private Docker registry

Prereq - Docker:

```
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
$ sudo apt-get update
$ sudo apt-get install docker-ce
$ sudo -H pip install docker-compose
```

1. Aquire certificates via letsencrypt as follows

```
$ git clone https://github.com/letsencrypt/letsencrypt.git
$ cd letsencrypt
$ sudo ./letsencrypt-auto certonly
$ cd /etc/letsencrypt/live/$host
$ cp privkey.pem /opt/registry/certs/$host.key
$ cp fullchain.pem /opt/registry/certs/$host.crt
$ sudo chmod 600 /opt/registry/certs
```

2. Clone this repository to `/opt/registry`

3. Generate htpasswd

```
make htpasswd
```

4. `docker-compose up -d`

### Login

`docker login $host`
