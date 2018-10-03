#!/bin/bash -e

sudo apt-get update && sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update && sudo apt-get install ansible -y

ansible-playbook ./bootstrap.yml