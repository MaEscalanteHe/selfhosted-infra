# Dozzle Service

The Dozzle service provides a lightweight, real-time log viewer for Docker containers. It allows you to monitor container logs through a simple web interface.

## Directory Structure

```
dozzle/
├── docker-compose.yml       # Docker Compose configuration for the Dozzle service
```

## Prerequisites

- Docker and Docker Compose installed on your system.

## Setup Instructions

1. **Start the Service**
   Use Docker Compose to start the Dozzle service:

   ```bash
   docker-compose up -d
   ```

   This will start the Dozzle service in detached mode.

2. **Access the Service**
   Open your browser and navigate to `http://localhost:8080` to access the Dozzle web interface. Replace `localhost` with your server's IP address if running remotely.

## Troubleshooting

- Check the logs for any errors:

  ```bash
  docker-compose logs
  ```

- Verify that Docker and Docker Compose are properly installed and running.

## Additional Resources

- [Dozzle Documentation](https://dozzle.dev/)
