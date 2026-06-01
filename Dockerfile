FROM caddy:builder-alpine

ENV XCADDY_SKIP_CLEANUP=0
ENV CADDY_MODULES="--with github.com/caddy-dns/duckdns --with github.com/caddy-dns/hetzner/v2 --with github.com/caddy-dns/cloudflare"
ENV XDG_DATA_HOME="/etc/caddy/data"
ENV XDG_CONFIG_HOME="/etc/caddy/config"


COPY  Caddyfile /usr/caddy/
COPY --chmod=755 startup.sh /usr/bin/

EXPOSE 80/tcp
EXPOSE 443/tcp
EXPOSE 443/udp
EXPOSE 2019/tcp

ENTRYPOINT ["startup.sh"]

LABEL org.opencontainers.image.source=https://github.com/snellejelle99/Caddy-Modular