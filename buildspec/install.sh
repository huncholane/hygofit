#!/bin/bash
set -e
source buildspec/global.sh

# Download PEM key from S3
echo "Downloading PEM key..."
aws s3 cp s3://hygo.secrets/hygo.pem "$PEM_FILE"
aws s3 cp s3://hygo.secrets/hygofit.env "$ENV_FILE"
chmod 400 /tmp/hygo.pem

# Update go
echo "Checking go version"
export_go
if go version | grep -q "$GO_VERSION"; then
	echo "Go is up to date"
else
	echo "Updating go"
	(
		mkdir -p install/go
		cd install/go
		curl -LO "https://go.dev/dl/go$GO_VERSION.linux-amd64.tar.gz" >/dev/null
		rm -rf /usr/local/go && tar -C /usr/local -xzf "go$GO_VERSION.linux-amd64.tar.gz" >/dev/null
	)
	export_go
	echo "Go Version"
	go version
fi

# Update node
echo "Checking node version"
if node -v | grep -q "$NODE_VERSION"; then
	echo "Node is up to date"
else
	echo "Updating node"
	(
		curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash >/dev/null
		source_nvm
		nvm install "v$NODE_VERSION" >/dev/null
	)
	source_nvm
	echo "Node Version"
	node -v
fi
