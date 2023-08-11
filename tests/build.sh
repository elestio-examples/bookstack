#!/usr/bin/env bash

chmod +x /dev/docker/Dockerfile
cp -rf dev/docker/* ./

docker buildx build . --output type=docker,name=elestio4test/bookstack:latest | docker load
