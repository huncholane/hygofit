#!/bin/bash
set -e
source ./buildspec/global.sh

echo "Building api"
(
	cd api
	go build main.go
)
echo "Successfully built api"

echo "Building frontend"
(
	cd frontend
	npm run build
)
echo "Successfully built frontend"

echo "Migrating database"
(
	cd database
	sh manage.sh migrate
)
echo "Successfully migrated"
