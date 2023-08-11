#!/usr/bin/env bash

chmod +x entrypoint.app.sh
chmod +x entrypoint.node.sh

docker buildx build . --output type=docker,name=elestio4test/bookstack:latest | docker load
