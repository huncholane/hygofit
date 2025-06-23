#!/bin/bash
set -e
source buildspec/global.sh

# Download PEM key from S3
echo "Downloading PEM key..."
aws s3 cp s3://hygo.secrets/hygo.pem "$PEM_FILE"
aws s3 cp s3://hygo.secrets/hygofit.env "$ENV_FILE"
chmod 400 /tmp/hygo.pem

# Update go
echo "Updating go"
go install golang.org/dl/go1.24.4@latest
go1.24.4 download

# Update node
echo "Updating node"
curl -fsSL https://deb.nodesource.com/setup_22.x | bash -
yum install -y nodejs

# Confirm installs
echo "Installed versions:"
go version
node -v
npm -v
