#!/bin/bash
set -e

echo "Setting up Traefik with Cloudflared service..."
sleep 1

echo "Creating data directories..."
mkdir -p data/letsencrypt data/crowdsec data/crowdsec logs/traefik

echo "Setting permissions for data directories..."
chmod 700 data/*

echo "Creating acme.json file for Let's Encrypt certificates..."
touch data/letsencrypt/acme.json
chmod 600 data/letsencrypt/acme.json

echo "Pulling latest Docker images..."
docker compose pull

echo "Setup complete! You can now run: docker compose up -d"
