# Bitbucket Server in Docker

This repository provides a Docker setup to run your own Bitbucket Server instance using Docker and Docker Compose.

## Prerequisites

- Docker OR Podman
- Docker Compose

## Getting Started

### Build and Run the Container
Build and run your Bitbucket Server container using Docker Compose:

```
docker-compose up --build
OR
podman compose up --build
```
### Accessing Bitbucket Server
Once the container is up and running, you can access Bitbucket Server via the following URL:
```
HTTP: http://localhost:7990
SSH: ssh://localhost:7999
```