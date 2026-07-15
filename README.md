# Caddy-Modular
This container builds and runs the latest version of Caddy with the specified modules included.  
This allows you to run Caddy with any of the modules available here: https://caddyserver.com/docs/modules.  

* [Usecases](#usecases)
* [Tutorials](#tutorials)


## Usecases
For when you want to:
* Use your own DNS provider for the [DNS challenge](tutorials/DNS_Challenge.md)
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

## Tutorials

>This section is incomplete. You can help by submitting your own tutorials as a pull request.

List of tutorials to help you get started.
All tutorials assume you are running this container on unraid 7 or higher.

* [DNS Challenge (No port forwarding & Wildcard certificates)](tutorials/DNS_Challenge.md)
