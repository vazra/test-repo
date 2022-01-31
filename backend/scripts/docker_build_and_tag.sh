#!/bin/bash

set -e

export VERSION=1.0.1
docker build . -t vazra/test-backend --build-arg build_verion=$VERSION --progress=plain
docker tag vazra/test-backend:latest vazra/test-backend:$VERSION

export VERSION=1.0.2
docker build . -t vazra/test-backend --build-arg build_verion=$VERSION
docker tag vazra/test-backend:latest vazra/test-backend:$VERSION

export VERSION=1.0.3
docker build . -t vazra/test-backend --build-arg build_verion=$VERSION
docker tag vazra/test-backend:latest vazra/test-backend:$VERSION

export VERSION=1.0.4
docker build . -t vazra/test-backend --build-arg build_verion=$VERSION
docker tag vazra/test-backend:latest vazra/test-backend:$VERSION

export VERSION=1.0.5
docker build . -t vazra/test-backend --build-arg build_verion=$VERSION
docker tag vazra/test-backend:latest vazra/test-backend:$VERSION