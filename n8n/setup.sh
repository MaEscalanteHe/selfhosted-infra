#!/bin/bash
set -e

echo "Setting up n8n service..."
sleep 1

echo "Creating data directories..."
mkdir -p data/n8n data/postgres data/redis

echo "Setting permissions for data directories..."
chmod 700 data/*

echo "Pulling latest Docker images..."
docker compose pull

echo "Setup complete! You can now run: docker compose up -d"