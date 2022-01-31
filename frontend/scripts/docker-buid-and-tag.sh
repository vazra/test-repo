#!/bin/bash

set -e

export VERSION=1.0.1
docker build . -t vazra/test-frontend --build-arg build_verion=$VERSION --progress=plain
docker tag vazra/test-frontend:latest vazra/test-frontend:$VERSION

export VERSION=1.0.2
docker build . -t vazra/test-frontend --build-arg build_verion=$VERSION
docker tag vazra/test-frontend:latest vazra/test-frontend:$VERSION

export VERSION=1.0.3
docker build . -t vazra/test-frontend --build-arg build_verion=$VERSION
docker tag vazra/test-frontend:latest vazra/test-frontend:$VERSION

export VERSION=1.0.4
docker build . -t vazra/test-frontend --build-arg build_verion=$VERSION
docker tag vazra/test-frontend:latest vazra/test-frontend:$VERSION

export VERSION=1.0.5
docker build . -t vazra/test-frontend --build-arg build_verion=$VERSION
docker tag vazra/test-frontend:latest vazra/test-frontend:$VERSION