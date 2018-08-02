#!/usr/bin/env bash
set -e

echo "Fixing permissions on var folder"
chmod a+rwx /srv/*/var/

echo "Delete cache"
rm -rf /srv/*/var/cache/*

/usr/bin/supervisord
