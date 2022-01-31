#!/bin/sh

set -e

echo "Generating build files for frontend.. "

yarn build 
cp /app/build/env/test.json /app/build/env.json
echo "Version: v$BUILD_VERSION" >> /app/build/ver.txt

echo "Done!"