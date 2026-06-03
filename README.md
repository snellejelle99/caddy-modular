# Caddy-Modular
This container builds and runs the latest version of Caddy with the specified modules included.  
This allows you to run Caddy with any of the modules available here: https://caddyserver.com/docs/modules.  
For when you want to:
* Use your own DNS provider for the DNS TLS-ALPN challenge
    * DuckDNS
    * Cloudflare
    * Hetzner
    * And many more...
* Use a different storage backend
    * Redis
    * MySQL
    * Postgres
* Use other authentication providers
    * Discord
    * JWT
    * LDAP
    * OAuth 2.0
* Set up caching
    * Redis
* Integrate security enhancements
    * Fail2Ban
    * Crowdsec
    * Geoblocking
    * Block bots and crawlers
* Collect metrics
    * Prometheus
    * Umami
* Run caddy with your own custom modules
* Or use any of the other registered caddy modules
    * https://caddyserver.com/docs/modules
  
* Based on the latest official alpine caddy builder image.

Planned Features:
* Storing the build binary to speed up restarts