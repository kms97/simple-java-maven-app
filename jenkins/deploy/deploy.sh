#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth
scp -i produser.pem /tmp/.auth produser@3.104.120.213:/tmp/.auth
scp -i produser.pem ./jenkins/deploy/publish.sh produser@3.104.120.213:/tmp/publish.sh
ssh -i produser.pem produser@3.104.120.213 "/tmp/publish.sh"