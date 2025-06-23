#!/bin/bash
set -e
source ./buildspec/global.sh

(
	echo "Building api"
	cd api
	go build main
)

(
	echo "Building frontend"
	cd frontend
	npm run build
)

(
	echo "Migrating database"
	cd database
	sh manage.sh migrate
)
