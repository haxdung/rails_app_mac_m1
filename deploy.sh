#!/bin/bash
cd myapp/
git fetch --all
git reset --hard origin/$1
docker-compose stop && docker-compose build && docker-compose up -d
