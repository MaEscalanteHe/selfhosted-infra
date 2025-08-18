# How to Generate Certificates for Running Portainer Locally

This guide explains how to generate SSL/TLS certificates for running Portainer on your local machine.

## Step 1: Install and Run mkcert

First, install `mkcert`, a simple tool for making locally-trusted development certificates. Once installed, run the following command to set it up:

```bash
mkcert -install
```

## Step 2: Generate Certificates

After installing `mkcert`, use it to generate the required certificate and key files for localhost. Run the following command:

```bash
mkcert -key-file portainer.key -cert-file portainer.crt localhost 127.0.0.1 ::1
```

This will create two files: `portainer.key` (private key) and `portainer.crt` (certificate), which can be used to enable HTTPS for Portainer.

## Step 3: Uninstall mkcert (Optional)

If you no longer need `mkcert` or want to remove its root certificate from your browser, you can uninstall it by running:

```bash
mkcert -uninstall
```
