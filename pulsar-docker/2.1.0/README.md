# Apache Pulsar Docker module

Apache Pulsar Docker module provides Dockerfiles and scripts for RocketMQ.

This repository includes the following: 

1. Dockerfile and scripts for RocketMQ run in following 2 scenarios:
- RocketMQ runs on single Docker daemon
- RocketMQ runs with docker-compose

## Quick start: Build and run Pulsar with a standalone instance

### For Docker

Run: 

```
cd 2.1.0

./play-docker.sh

```

### For docker-compose

Run:

```
cd 2.1.0

./play-docker-compose.sh

```

### Reference

https://pulsar.incubator.apache.org/docs/latest/getting-started/docker/