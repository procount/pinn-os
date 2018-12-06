#!/bin/sh
#supports_backup in PINN

set -ex

if [ -z "$part1" ] || [ -z "$part3" ]; then
  printf "Error: missing environment variable part1 or part3\n" 1>&2
  exit 1
fi

mkdir -p /tmp/1
mount "$part1" /tmp/1

sed /tmp/1/cmdline.txt -i -e "s|root=[^ ]*|root=${part3}|"

umount /tmp/1
