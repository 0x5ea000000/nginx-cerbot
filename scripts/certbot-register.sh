# !/bin/bash

docker compose run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ -d [domain-name]