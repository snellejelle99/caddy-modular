#!/usr/bin/env sh

if [ ! -f /etc/caddy/Caddyfile ]
then
mkdir -p /etc/caddy && cp /usr/caddy/Caddyfile /etc/caddy/Caddyfile
fi

CADDY_VERSION=${CADDY_VERSION_OVERRIDE:-$CADDY_VERSION}
if [[ "$CADDY_VERSION" == "edge" ]]; then
    xcaddy build master $CADDY_MODULES
else
    xcaddy build $CADDY_VERSION $CADDY_MODULES
fi

if [$CADDY_KEEP_BUILD_CACHE == 0]; then
    go clean -cache -modcache -testcache -fuzzcache
fi

caddy version
caddy list-modules --packages --versions -s

exec caddy run --config "/etc/caddy/Caddyfile" --adapter caddyfile

