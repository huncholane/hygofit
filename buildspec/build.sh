#!/bin/bash
set -e
source ./buildspec/global.sh
setup

echo "Building api"
(
	cd api
	go build main.go
)
echo "Successfully built api"

echo "Building frontend"
(
	cd frontend
	npm i
	npm run build
)
echo "Successfully built frontend"

echo "Migrating database"
(
	cd database
	sh manage.sh migrate
)
echo "Successfully migrated"
