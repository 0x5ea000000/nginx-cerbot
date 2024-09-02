# !/bin/bash

docker compose run --rm certbot certonly --manual -d "*.[domain-name]" --preferred-challenges=dns
