#!/bin/bash
docker run -d --rm --name testslave \
    -v /var/run/docker.sock:/var/run/docker.sock \
    --network jenkins_jenkins-net \
    jenkins_slave
