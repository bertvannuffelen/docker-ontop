#!/bin/bash
set -x

mywebapp=OSLO/docker-ontop

docker run  -p 8080:8080 --name my-ontop \
             -v /home/vagrant/$mywebapp/data:/data \
             -v /home/vagrant/$mywebapp/logs:/logs \
             docker-ontop

