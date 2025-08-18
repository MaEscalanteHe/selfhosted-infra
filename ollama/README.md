# Ollama Service

The Ollama service provides a platform for hosting and managing AI models. It includes secure storage for model data and configurations, making it easy to deploy and maintain AI solutions.

## Directory Structure

```
ollama/
├── docker-compose.yml       # Docker Compose configuration for the Ollama service
├── ollama-data/             # Directory for Ollama's persistent data
└── openwebui-data/          # Directory for OpenWebUI data
```

## Prerequisites

- Docker and Docker Compose installed on your system.
- NVIDIA Container Toolkit installed for GPU support.
- NVIDIA CDI (Container Device Interface) configured for advanced GPU features. To configure NVIDIA CDI:

  1. Install the NVIDIA Container Toolkit:

  ```bash
  yay -S nvidia-container-toolkit
  ```

  2. Run the NVIDIA CDI autoconfigure command with the output path:
     ```bash
     sudo nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
     ```
  3. Restart the Docker service to apply the changes:
     ```bash
     sudo systemctl restart docker
     ```

## Setup Instructions

1. **Start the Service**
   Use Docker Compose to start the Ollama service:

   ```bash
   docker-compose up -d
   ```

   This will start the Ollama service in detached mode.

2. **Access the Service**
   Open your browser and navigate to the configured domain or IP address to access the Ollama service.

## Troubleshooting

- Check the logs for any errors:

  ```bash
  docker-compose logs
  ```

- Verify that Docker and Docker Compose are properly installed and running.

## Additional Resources

- [Ollama Documentation](https://ollama.ai/)
