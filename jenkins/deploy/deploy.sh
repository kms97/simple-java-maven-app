#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth
scp -i /opt/produser.pem /tmp/.auth produser@3.104.120.213:/tmp/.auth
scp -i /opt/produser.pem ./jenkins/deploy/publish.sh produser@3.104.120.213:/tmp/publish.sh
ssh -i /opt/produser.pem produser@3.104.120.213 "/tmp/publish.sh"