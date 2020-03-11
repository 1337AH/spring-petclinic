#!/bin/bash

docker build -t arlindhoxha/spring-petclinic:latest .
docker login --username ${DOCKER_HUB_USERNAME} --password ${DOCKER_HUB_TOKEN_PASSWORD}
docker push arlindhoxha/spring-petclinic:latest