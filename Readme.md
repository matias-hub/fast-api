# FastAPI API Deployment Guide

This guide will help you download and deploy the FastAPI application from this GitHub repository.

## Prerequisites

Before you get started, make sure you have the following installed on your system:

- [Docker](https://www.docker.com/get-started)

## Download and Deploy

Follow these steps to download and deploy the FastAPI API:

1. Clone the GitHub repository to your local machine:

   ```
    git clone https://github.com/matias-hub/fast-api.git
    cd fast-api
   ```

2. Build the Docker image and start the FastAPI application:

   ```
   docker compose build && docker compose up
   ```

3. Access the FastAPI application in your web browser at http://localhost:8000.
