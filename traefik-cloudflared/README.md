# Traefik with Cloudflared Service

The Traefik with Cloudflared service provides a reverse proxy and secure tunneling solution for exposing services to the internet. Traefik acts as the reverse proxy, while Cloudflared handles secure tunneling through Cloudflare's network.

## Directory Structure

```
traefik-cloudflared/
├── docker-compose.yml       # Docker Compose configuration for the Traefik and Cloudflared services
└── letsencrypt/             # Directory for Let's Encrypt certificates
```

## Prerequisites

- Docker and Docker Compose installed on your system.
- A Cloudflare account for setting up secure tunnels.

## Setup Instructions

1. **Start the Service**
   Use Docker Compose to start the Traefik and Cloudflared services:

   ```bash
   docker-compose up -d
   ```

   This will start the services in detached mode.

2. **Configure DNS Records**
   Set up the necessary DNS records in your Cloudflare account to route traffic to your services.

3. **Access the Services**
   Open your browser and navigate to the domain you configured in Cloudflare to access your services.

## Troubleshooting

- If something's not working, check the logs:

  ```bash
  docker-compose logs
  ```

- Make sure Docker and Docker Compose are installed and running. Sometimes a restart helps!

## Additional Resources

- [Traefik Docs](https://doc.traefik.io/traefik/)
- [Cloudflared Docs](https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/)
