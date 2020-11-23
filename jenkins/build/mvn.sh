#!/bin/bash

echo "********************************"
echo "Building JAR"
echo "********************************"
WORKSPACE=/Users/kavshah/playground/jenkins/jenkins_home/workspace/pipeline-docker-maven
docker run --rm -v $WORKSPACE/simple-java-maven-app:/app -v ~/.m2/:/root/.m2 -w /app maven:3-alpine "$@"
