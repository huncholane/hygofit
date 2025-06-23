#!/bin/bash
set -e
source buildspec/global.sh

aws s3 sync frontend/out s3://hygofit.frontend --delete

SSH "mkdir -p ~/hygofit"
dossh "mkdir -p ~/hygofit"
scpto api/main hygofit/main
scpto $ENV_FILE hygofit/.env
scpto api/start.sh hygofit/start.sh
dossh 'cd hygofit && ./start.sh'
