#!/bin/bash
set -e
source buildspec/global.sh

# Download PEM key from S3
echo "Downloading PEM key..."
aws s3 cp s3://hygo.secrets/hygo.pem "$PEM_FILE"
aws s3 cp s3://hygo.secrets/hygofit.env "$ENV_FILE"
chmod 400 /tmp/hygo.pem

# Update go
export PATH=/usr/local/go/bin:$PATH
if go version | grep -q 1.24.4; then
	echo "Go is up to date"
else
	echo "Updating go"
	(
		if [ -d install/go ]; then exit 0; fi
		mkdir -p install/go
		cd install/go
		curl -LO https://go.dev/dl/go1.24.4.linux-amd64.tar.gz >/dev/null
		rm -rf /usr/local/go && tar -C /usr/local -xzf go1.24.4.linux-amd64.tar.gz >/dev/null
	)
	eval "$EXPORT_GO"
	echo "Go Version"
	go version
fi

# Update node
if node -v | grep -q "$NODE_VERSION"; then
	echo "Node is up to date"
else
	echo "Updating node"
	(
		curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash >/dev/null
		eval "$SOURCE_NVM"
		nvm install "NODE_VERSION" >/dev/null
	)
	eval "$SOURCE_NVM"
	echo "Node Version"
	node -v
fi
