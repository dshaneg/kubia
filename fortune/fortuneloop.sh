#!/bin/bash
set -e
trap "exit" SIGINT
echo Configured to generate new fortune every ${INTERVAL} seconds
mkdir -p /var/htdocs
while :
do
  echo $(date) Writing fortune to /var/htdocs/index.html
  /usr/games/fortune | tee /var/htdocs/index.html
  sleep ${INTERVAL}
done
