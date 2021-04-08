#! /bin/bash
kubectl apply -f namespace.yaml

kubectl apply -f nginx-config.yaml

kubectl apply -f nginx-lb.yaml

kubectl apply -f nginx.yaml

kubectl apply -f backend.yaml

kubectl apply -f frontend.yaml

kubectl apply -f backend-svc.yaml

kubectl apply -f frontend-svc.yaml