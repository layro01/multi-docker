#!/bin/bash

VERSION=0.0.1

docker build -f Dockerfile.dev . -t udemy/complex-client:$VERSION

echo Run with:
echo    docker run -t udemy/complex-client:$VERSION