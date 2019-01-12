USER = alec
PASSWORD = registry

.PHONY: htpasswd
htpasswd:
	docker run \
  --entrypoint htpasswd \
  registry:2 -Bbn $(USER) $(PASSWORD) > auth/htpasswd
