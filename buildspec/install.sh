#!/bin/bash
set -e
source buildspec/global.sh

# Download PEM key from S3
echo "Downloading PEM key..."
aws s3 cp s3://hygo.secrets/hygo.pem "$PEM_FILE"
aws s3 cp s3://hygo.secrets/hygofit.env "$ENV_FILE"
chmod 400 /tmp/hygo.pem

# Go install
GO_VERSION=1.23
if ! command -v go &>/dev/null; then
	echo "Installing Go $GO_VERSION..."
	curl -sSLo go.tar.gz "https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz"
	tar -C /usr/local -xzf go.tar.gz
	export PATH="/usr/local/go/bin:$PATH"
	echo 'export PATH=/usr/local/go/bin:$PATH' >>/etc/profile.d/go.sh
fi

# Node install
NODE_VERSION=20
if ! command -v node &>/dev/null; then
	echo "Installing Node.js $NODE_VERSION..."
	curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash -
	apt-get update && apt-get install -y nodejs
fi

# Confirm installs
echo "Installed versions:"
go version
node -v
npm -v
