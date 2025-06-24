#!/bin/bash
set -e
source buildspec/global.sh
setup

aws s3 sync frontend/out s3://hygofit.frontend --delete >/dev/null

ls "$PEM_FILE"

echo "Making hygofit directory"
dossh "mkdir -p ~/hygofit"
echo "Copying main to server"
scpto api/main hygofit/main
echo "Copying env to server"
scpto $ENV_FILE hygofit/.env
echo "copying start.sh to server"
scpto api/start.sh hygofit/start.sh
echo "starting the server"
dossh 'cd hygofit && sh start.sh'
