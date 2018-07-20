#!/bin/bash
sudo docker build -t ahmedsramadan/drkiq . 
sudo docker build -t ahmedsramadan/sidekiq -f Dockerfile2 .
sudo docker push ahmedsramadan/drkiq
sudo docker push ahmedsramadan/sidekiq

kubectl apply -f drkiq-claim0-persistentvolumeclaim.yaml
kubectl apply -fd rkiq-deployment.yaml
kubectl apply -f drkiq-postgres-persistentvolumeclaim.yaml
kubectl apply -f drkiq-redis-persistentvolumeclaim.yaml
kubectl apply -f drkiq-service.yaml
kubectl apply -f postgres-deployment.yaml
kubectl apply -f postgres-service.yaml
kubectl apply -f redis-deployment.yaml
kubectl apply -f redis-service.yaml
kubectl apply -f sidekiq-claim0-persistentvolumeclaim.yaml
kubectl apply -f sidekiq-deployment.yaml
kubectl apply -f sidekiq-service.yaml
