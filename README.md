# Frontend Repository

This repository contains the React frontend application for the project.

## Getting Started

1. **Fork** this repository.
2. Set up **Azure Container Registry (ACR)** and **AKS** service connections in Azure DevOps.

## CI/CD Pipeline

- The pipeline builds the Docker image for the frontend, pushes it to ACR, and deploys it to AKS with Kubernetes autoscaling.

## Commands

- `npm install` to install dependencies.
- `npm run build` to build the production version.
