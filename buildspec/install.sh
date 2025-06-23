#!/bin/bash
set -e
source buildspec/global.sh

# Download PEM key from S3
echo "Downloading PEM key..."
aws s3 cp s3://hygo.secrets/hygo.pem "$PEM_FILE"
aws s3 cp s3://hygo.secrets/hygofit.env "$ENV_FILE"
chmod 400 /tmp/hygo.pem

mkdir install

# Update go
echo "Updating go"
(
	cd install
	curl -LO https://go.dev/dl/go1.24.4.linux-amd64.tar.gz
	rm -rf /usr/local/go && tar -C /usr/local -xzf go1.24.4.darwin-amd64.tar.gz
)
go version

# Update node
echo "Updating node"
(
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash >/dev/null
	source "$HOME/.nvm/nvm.sh"
	nvm install 22 >/dev/null
	node -v
)

source buildspec/global.sh

# Confirm installs
echo "Installed versions:"
go version
node -v
npm -v
