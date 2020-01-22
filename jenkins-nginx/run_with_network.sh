#!/bin/bash
docker run -d -p 80:80 --name=jenkins-nginx --network jenkins-net myjenkinsnginx