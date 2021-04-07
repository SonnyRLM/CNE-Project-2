#! /bin/bash

# Install and configure AWSCLI
sudo apt install awscli -y

aws configure set aws_access_key_id ${AWS_ACCESS_KEY_ID}
aws configure set aws_secret_access_key ${AWS_SECRET_ACCESS_KEY}
aws configure set default.region eu-west-2
