#!/bin/bash

set -e

if [ "$#" -gt 0 ]; then
  exec "$@"
else
  exec pgbouncer --user=postgres /etc/pgbouncer/pgbouncer.ini
fi

