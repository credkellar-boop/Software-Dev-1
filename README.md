# Software-Dev-1: Monad-HFT-Node Architecture

## Overview
An elite, cloud-native Node.js microservice optimized for high-frequency execution. Designed for deployment across AWS Serverless, Azure, and Kubernetes.

## Tech Stack
* **Runtime:** Node.js (v20) & Express
* **Containerization:** Docker & Docker Compose
* **Orchestration:** Kubernetes (CKAD Standard)
* **CI/CD:** GitHub Actions

## Quick Start (Local)
1. Clone the repository.
2. Run `npm install`
3. Start the server: `make up` (Requires Docker)
4. Test the API: `curl http://localhost:3000/health`

## Testing
Run unit tests via: `make test`
o
