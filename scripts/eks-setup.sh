#! /bin/bash

# Script to deploy eks cluster 
clusterExist=$(eksctl get cluster | grep -w "JenkinsCluster")
var_length=${#clusterExist}

if (( ${var_length}==0 )); then
echo 'launching cluster'
eksctl create cluster -f cluster.yaml
#eksctl create cluster --name JenkinsCluster --region eu-west-2 --nodegroup-name DemoNodes --nodes 3 --nodes-min 2 --nodes-max 3 --node-type t2.small --with-oidc --ssh-access --ssh-public-key TerraformPair --managed
fi
