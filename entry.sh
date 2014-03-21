#!/bin/sh
set -e

[ -d /dev/net ] ||
    mkdir -p /dev/net
[ -c /dev/net/tun ] ||
    mknod /dev/net/tun c 10 200


/bin/rm /var/run/pritunl.pid

/usr/bin/pritunl --daemon --pidfile /var/run/pritunl.pid

[ "$1" ] && exec "$@"

