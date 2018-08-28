#!/bin/bash

# standalone
docker run -d -p 6650:6650 -p 8080:8080 -v $PWD/data:/pulsar/data apachepulsar/pulsar:2.1.0-incubating bin/pulsar standalone