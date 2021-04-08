#!/bin/bash
sudo apt update

#For installing requirements.txt with docker
sudo apt install -y python3-pip

sudo apt install -y nginx

sudo apt install -y jq

#For running tests on application
sudo apt install -y python-pytest
