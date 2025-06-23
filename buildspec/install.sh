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
(
	if [ -d install/go ]; then exit 0; fi
	mkdir -p install/go
	cd install/go
	curl -LO https://go.dev/dl/go1.24.4.linux-amd64.tar.gz >/dev/null
	rm -rf /usr/local/go && tar -C /usr/local -xzf go1.24.4.linux-amd64.tar.gz >/dev/null
)
export PATH=/usr/local/go/bin:$PATH
echo "Go Version"
go version

# Update node
echo "Updating node"
(
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash >/dev/null
	nvm install 22 >/dev/null
)
source "$HOME/.nvm/nvm.sh"
echo "Node Version"
node -v
