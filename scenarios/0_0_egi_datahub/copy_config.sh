#!/usr/bin/env bash

_HOSTS="onedata01.cloud.plgrid.pl zonedb01.cloud.plgrid.pl zonedb02.cloud.plgrid.pl"
for _HOST in $_HOSTS; do
  echo sudo rsync -crlvz -e ssh --stats --progress -e "ssh -i /home/ubuntu/.ssh/id_rsa"  --rsync-path="sudo rsync" /volumes/* ubuntu@${_HOST}:/volumes
done
