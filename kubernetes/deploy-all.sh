#! /bin/bash
kubectl apply -f kubernetes/namespace.yaml

kubectl apply -f kubernetes/nginx-config.yaml

kubectl apply -f kubernetes/nginx-lb.yaml

kubectl apply -f kubernetes/nginx.yaml

kubectl apply -f kubernetes/backend.yaml

kubectl apply -f kubernetes/frontend.yaml

kubectl apply -f kubernetes/backend-svc.yaml

kubectl apply -f kubernetes/frontend-svc.yaml