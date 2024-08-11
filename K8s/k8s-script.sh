#!/bin/bash

# Apply MongoDB resources
kubectl apply -f ./mongo-db/configmap.yaml
kubectl apply -f ./mongo-db/secret.yaml
kubectl apply -f ./mongo-db/deployment.yaml
kubectl apply -f ./mongo-db/service.yaml

# Apply Backend resources
kubectl apply -f ./backend/deployment.yaml
kubectl apply -f ./backend/service.yaml

# Apply Frontend resources
kubectl apply -f ./frontend/deployment.yaml
kubectl apply -f ./frontend/service.yaml

# Apply Ingress resource
#kubectl apply -f ingress.yaml