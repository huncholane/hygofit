#!/bin/bash
set -e
source buildspec/global.sh

# Download PEM key from S3
echo "Downloading PEM key..."
aws s3 cp s3://hygo.secrets/hygo.pem "$PEM_FILE" >/dev/null
aws s3 cp s3://hygo.secrets/hygofit.env "$ENV_FILE" >/dev/null
chmod 400 "$PEM_FILE"
