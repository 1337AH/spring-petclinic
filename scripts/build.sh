#!/bin/bash

mvn clean package -q
sudo rm /usr/local/bin/docker-compose
curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > docker-compose
chmod +x docker-compose
sudo mv docker-compose /usr/local/bin

docker build -t ${DOCKER_HUB_USERNAME}/spring-petclinic:latest .
docker login --username ${DOCKER_HUB_USERNAME} --password ${DOCKER_HUB_TOKEN_PASSWORD}
docker push arlindhoxha/spring-petclinic:latest