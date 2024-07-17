#!/bin/bash

crontab -l | { cat; echo "0 0 1 * * ${PWD}/certbot-renew.sh"; } | crontab -
