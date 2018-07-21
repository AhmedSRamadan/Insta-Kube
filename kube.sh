#!/bin/bash

kubectl apply -f kubernetes/drkiq-claim0-persistentvolumeclaim.yaml
kubectl apply -f kubernetes/drkiq-deployment.yaml
kubectl apply -f kubernetes/drkiq-postgres-persistentvolumeclaim.yaml
kubectl apply -f kubernetes/drkiq-redis-persistentvolumeclaim.yaml
kubectl apply -f kubernetes/drkiq-service.yaml
kubectl apply -f kubernetes/postgres-deployment.yaml
kubectl apply -f kubernetes/postgres-service.yaml
kubectl apply -f kubernetes/redis-deployment.yaml
kubectl apply -f kubernetes/redis-service.yaml
kubectl apply -f kubernetes/sidekiq-claim0-persistentvolumeclaim.yaml
kubectl apply -f kubernetes/sidekiq-deployment.yaml
kubectl apply -f kubernetes/sidekiq-service.yaml
