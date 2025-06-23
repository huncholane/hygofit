#!/bin/bash
export NVM_PATH="$HOME/.nvm/nvm.sh"
export PEM_FILE="/tmp/hygo.pem"
export ENV_FILE=/tmp/hygofit.env
export NODE_VERSION="20.16.0"
export GO_VERSION="1.24.4"

# shellcheck source=/dev/null
source_env() {
	if [ -s "$ENV_FILE" ]; then
		echo "Loading environment variables"
		cat "$ENV_FILE"
		set -a
		source "$ENV_FILE"
		set +a
	fi
}

# shellcheck source=/dev/null
source_nvm() {
	[ -s "$NVM_PATH" ] && source "$NVM_PATH"
}

export_go() {
	export PATH="/usr/local/go/bin:$PATH"
}

dossh() {
	ssh -i "$PEM_FILE" "ubuntu@$EC2" "$1"
}

scpto() {
	scp -i "$PEM_FILE" "$1" "ubuntu@$EC2:$2"
}

setup() {
	source_env
	source_nvm
	export_go
}
