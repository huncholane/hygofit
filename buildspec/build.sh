#!/bin/bash
set -e
source ./buildspec/global.sh

echo "Building api"
cd api
go build main
cd ..
echo "Successfully built api"

echo "Building frontend"
cd frontend
npm run build
cd ..
echo "Successfully built frontend"

echo "Migrating database"
cd database
sh manage.sh migrate
cd ..
echo "Successfully migrated"
