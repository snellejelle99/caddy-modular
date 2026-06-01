#!/usr/bin/env sh

if [ ! -f /etc/caddy/Caddyfile ]
then
mkdir -p /etc/caddy && cp /usr/caddy/Caddyfile /etc/caddy/Caddyfile
fi

xcaddy build $CADDY_VERSION $CADDY_MODULES

caddy version
caddy list-modules --packages --versions -s

exec caddy run --config "/etc/caddy/Caddyfile" --adapter caddyfile

