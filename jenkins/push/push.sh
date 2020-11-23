#!/bin/bash

echo "*******************"
echo "*****Pushing*******"
echo "*******************"

IMAGE="maven-project"
docker login -u kavshah -p $PASS
echo "Tagging image"
docker tag $IMAGE:$BUILD_TAG kavshah/$IMAGE:$BUILD_TAG
echo "Pushing image"
docker push kavshah/$IMAGE:$BUILD_TAG
