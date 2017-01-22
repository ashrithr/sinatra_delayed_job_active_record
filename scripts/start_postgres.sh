#!/usr/bin/env bash

docker run --name sinatra_db -d -p 5432:5432 -e POSTGRES_USER=test -e POSTGRES_DB=test \
-e POSTGRES_PASSWORD=test postgres:9.6.1-alpine
