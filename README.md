# Self-Hosted Infrastructure

This repository contains Docker Compose setups for various self-hosted services. Each service lives in its own directory with a dedicated `docker-compose.yml` and service-specific instructions.

## Prerequisites

- [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/)
- Additional tools may be required for certain services (e.g., `mkcert` for Portainer, NVIDIA Container Toolkit for GPU-enabled services, or a Cloudflare account for tunneling). Refer to each service's README for details.

## Services

| Service                                                   | Description                                  |
| --------------------------------------------------------- | -------------------------------------------- |
| [Dozzle](dozzle/README.md)                                | Real-time Docker log viewer                  |
| [n8n](n8n/README.md)                                      | Workflow automation platform                 |
| [Ollama](ollama/README.md)                                | AI model hosting with optional GPU support   |
| [Portainer](portainer/README.md)                          | Docker management UI with SSL support        |
| [Tailscale](tailscale/README.md)                          | Secure peer-to-peer VPN                      |
| [Traefik with Cloudflared](traefik-cloudflared/README.md) | Reverse proxy with secure Cloudflare tunnels |

## Usage

1. Clone this repository.
2. Change into the directory of the service you want to deploy.
3. Follow the instructions in that service's `README.md` to start it, typically with:
   ```bash
   docker-compose up -d
   ```

## License

This project is licensed under the [MIT License](LICENSE).
