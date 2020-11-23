#!/bin/bash

cp -f simple-java-maven-app/target/*.jar jenkins/build/
echo "*******************************"
echo "*****Building Docker image*****"
echo "*******************************"
cd jenkins/build/ && docker-compose build --no-cache

