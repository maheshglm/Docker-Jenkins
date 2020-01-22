#!/bin/bash
docker run -d --name jenkins-master -p 8080:8080 -p 50000:50000 \
    -v $(pwd)/jenkins-data:/var/jenkins_home \
    -v /var/run/docker.sock:/var/run/docker.sock \
    --restart unless-stopped \
    myjenkins