#!/usr/bin/env bash
cp -rf dev/docker/* ./

docker buildx build . --output type=docker,name=elestio4test/bookstack:latest | docker load
