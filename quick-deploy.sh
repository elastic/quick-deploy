#!/bin/bash -e

#-------------------------
# BOOTSTRAP ANSIBLE
#-------------------------
sudo apt-get update && sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update && sudo apt-get install ansible -y

#-------------------------
# ANSIBLE INSTALL DOCKER
#-------------------------
export DOCKER_COMPOSE_VERSION=$(curl -Ls -o /dev/null -w %{url_effective} https://github.com/docker/compose/releases/latest | awk -F / '{print $NF}')
export CURRENT_USER=$(whoami)

ansible-playbook ./bootstrap.yml -e docker_compose_version=$DOCKER_COMPOSE_VERSION -e user=$CURRENT_USER

#-------------------------
# DEPLOY THE ELASTIC STACK
#-------------------------
docker-compose up -d