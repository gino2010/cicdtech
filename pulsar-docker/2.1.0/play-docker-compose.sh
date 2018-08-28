#!/bin/bash

# Build 
docker-compose -f docker-compose/docker-compose.yml build

# Start
docker-compose -f docker-compose/docker-compose.yml up -d