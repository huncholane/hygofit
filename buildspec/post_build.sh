#!/bin/bash
set -e
source buildspec/global.sh

aws s3 sync frontend/out s3://hygofit.frontend --delete >/dev/null

ls "$PEM_FILE"

echo "Copying the service file"
scpto api/hygofit-api.service /etc/systemd/system/hygofit-api.service
echo "Copying main to server"
scpto api/main /usr/local/bin/hygofit
echo "Copying env to server"
scpto $ENV_FILE /etc/hygofit.env
dossh 'sudo systemctl enable hygofit-api --now && sudo systemctl restart hygofit-api'
