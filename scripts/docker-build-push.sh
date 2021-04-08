#!/bin/bash

sudo docker build backend -t sonnyrlm/backend
sudo docker build frontend -t sonnyrlm/frontend


sudo docker push sonnyrlm/backend
sudo docker push sonnyrlm/frontend