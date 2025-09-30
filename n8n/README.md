# n8n Service

The n8n service is a workflow automation tool that allows you to connect various applications and services to automate tasks and processes. It provides a user-friendly interface for creating workflows without requiring extensive coding knowledge.

## Architecture

This setup includes:

- **n8n main**: Web UI and webhook handler (routes through VPN)
- **n8n-worker**: Queue-based execution worker
- **PostgreSQL 17**: Database backend
- **Redis 8**: Queue management (Bull/BullMQ)
- **Gluetun**: VPN tunnel (NordVPN WireGuard) for external connectivity

### Network Configuration

- **n8n** (172.102.0.0/24): Internal network for service communication
- **traefik-apps** (172.101.0.0/24): External network for Traefik reverse proxy

## Directory Structure

```
n8n/
├── docker-compose.yml       # Docker Compose configuration
├── .env-example             # Environment variables template
├── init-data.sh             # PostgreSQL initialization script
└── data/
    ├── n8n/                 # n8n persistent data (workflows, credentials)
    ├── postgres/            # PostgreSQL data
    └── redis/               # Redis persistence files
```

## Prerequisites

- Docker and Docker Compose installed on your system
- External Traefik network (`traefik-apps`) must exist
- NordVPN WireGuard credentials for VPN connection

## Setup Instructions

1. **Configure Environment Variables**
   Copy the example file and fill in your values:

   ```bash
   cp .env-example .env
   nano .env
   ```

   Required variables:

   - `DOMAIN`: Your domain for accessing n8n
   - `POSTGRES_USER`, `POSTGRES_PASSWORD`, `POSTGRES_DB`: Database credentials
   - `POSTGRES_NON_ROOT_USER`, `POSTGRES_NON_ROOT_PASSWORD`: n8n database user
   - `N8N_ENCRYPTION_KEY`: Generate with `openssl rand -hex 32`
   - `WIREGUARD_PRIVATE_KEY`, `WIREGUARD_ADDRESSES`: NordVPN WireGuard config

2. **Start the Service**
   Use Docker Compose to start the n8n service:

   ```bash
   docker-compose up -d
   ```

   This will start all services in detached mode.

3. **Access the UI**
   Open your browser and navigate to `https://n8n.YOUR_DOMAIN` to access the n8n web interface.

## Features

- **Queue Mode**: Executions are processed by dedicated worker for better performance
- **VPN Integration**: All external requests route through NordVPN (Madrid endpoint)
- **Secure Database**: PostgreSQL with separate user for n8n (principle of least privilege)
- **Health Checks**: All services have comprehensive health monitoring
- **Resource Limits**: CPU and memory constraints to prevent resource exhaustion

## Troubleshooting

- **Check service status**:

  ```bash
  docker-compose ps
  ```

- **View logs**:

  ```bash
  docker-compose logs -f [service_name]
  # Examples: n8n, n8n-worker, postgres, redis, gluetun
  ```

- **Verify VPN connection**:

  ```bash
  docker-compose exec gluetun wget -qO- ifconfig.me
  ```

- **Test n8n health endpoint**:

  ```bash
  curl https://n8n.YOUR_DOMAIN/healthz
  ```

- **Redis connection issues**: Ensure Redis is healthy before n8n starts (automatic via depends_on)

## Additional Resources

- [n8n Documentation](https://docs.n8n.io/)
- [Gluetun VPN Documentation](https://github.com/qdm12/gluetun)
- [NordVPN WireGuard Setup](https://support.nordvpn.com/hc/en-us/articles/20195967385745-NordVPN-WireGuard-manual-setup-for-Linux)
