#!/bin/bash

echo "********************************"
echo "Testing"
echo "********************************"

docker run --rm -v $PWD/simple-java-maven-app:/app -v ~/.m2/:/root/.m2 -w /app maven:3-alpine "$@"
