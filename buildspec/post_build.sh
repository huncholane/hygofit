#!/bin/bash
set -e
source buildspec/global.sh

aws s3 sync frontend/out s3://hygofit.frontend --delete

$SSH "mkdir -p ~/hygofit"
$SCP api/main "ubuntu@$EC2:hygofit/main"
$SCP $ENV_FILE "ubuntu@$EC2:hygofit/.env"
$SSH "cd hygofit && chmod +x main && ./main"
