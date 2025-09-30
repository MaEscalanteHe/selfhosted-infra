#!/bin/bash
set -e

echo "Setting up Tailscale service..."
sleep 1

echo "Creating data directories..."
mkdir -p data/tailscale

echo "Setting permissions for data directories..."
chmod 700 data/*

echo "Pulling latest Docker images..."
docker compose pull

echo "Setup complete! You can now run: docker compose up -d"
