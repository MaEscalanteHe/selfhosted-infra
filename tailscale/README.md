# Tailscale Service

The Tailscale service provides a secure, peer-to-peer VPN solution that makes it easy to connect devices and services across different networks. It uses WireGuard for encryption and offers seamless access to your private network.

## Directory Structure

```
tailscale/
├── docker-compose.yml       # Docker Compose configuration for the Tailscale service
└── data/                    # Directory for Tailscale's persistent data
```

## Prerequisites

- Docker and Docker Compose installed on your system.

## Setup Instructions

1. **Start the Service**
   Use Docker Compose to start the Tailscale service:

   ```bash
   docker-compose up -d
   ```

   This will start the Tailscale service in detached mode.

2. **Access the Service**
   Follow the logs to retrieve the authentication URL:

   ```bash
   docker-compose logs
   ```

   Open the URL in your browser to authenticate and connect your device to the Tailscale network.

## Troubleshooting

- Check the logs for any errors:

  ```bash
  docker-compose logs
  ```

- Verify that Docker and Docker Compose are properly installed and running.

## Additional Resources

- [Tailscale Documentation](https://tailscale.com/)
