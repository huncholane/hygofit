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

echo "Building lambda function"
(
	cp $ENV_FILE api/.env
	cd api
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build ./cmd/lambda/lambda.go
	zip lambda.zip lambda .env
)
echo "Successfully built lambda function"

echo "Building frontend"
(
	cd frontend
	cp $ENV_FILE .env
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
