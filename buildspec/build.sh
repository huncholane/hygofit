#!/bin/bash
set -e
source buildspec/global.sh

if [ -d frontend/node_modules ]; then
	echo "Node modules was cached"
else
	echo "Node modules was not cached"
fi
if [ -d frontend/.next ]; then
	echo "Next build was cached"
else
	echo "Next build was not cached"
fi

echo "Building api"
(
	cd api
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build main.go
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
