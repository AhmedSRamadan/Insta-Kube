#!/bin/bash
sudo docker build -t ahmedsramadan/drkiq . 
sudo docker build -t ahmedsramadan/sidekiq -f Dockerfile2 .
sudo docker push ahmedsramadan/drkiq
sudo docker push ahmedsramadan/sidekiq
