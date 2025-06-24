#!/bin/bash
set -e
source buildspec/global.sh

aws s3 sync frontend/out s3://hygofit.frontend --delete >/dev/null

echo "Making hygofit directory"
dossh "mkdir -p ~/hygofit"
echo "Copying the service file"
scpto api/hygofit.service hygofit/hygofit.service
echo "Copying main to server"
scpto api/main hygofit/main
echo "Copying env to server"
scpto $ENV_FILE hygofit/hygofit.env
echo "Copying install script to server"
scpto api/install.sh hygofit/install.sh
dossh 'cd hygofit && sh install.sh'
