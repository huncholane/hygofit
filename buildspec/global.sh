#!/bin/bash
export NVM_PATH="$HOME/.nvm/nvm.sh"
export PEM_FILE="/tmp/hygo.pem"
export ENV_FILE=/tmp/hygofit.env
export NODE_VERSION="20.16.0"

SOURCE_ENV="[ -s $ENV_FILE] && source $ENV_FILE"
SOURCE_NVM="[ -s $NVM_PATH ] && source $NVM_PATH"
EXPORT_GO="export PATH=/usr/local/go/bin:$PATH"

if [ -f "$ENV_FILE" ]; then
	echo "Loading environment variables"
	cat "$ENV_FILE"
	set -a
	eval "$SOURCE_ENV"
	set +a
fi

eval "$SOURCE_NVM"
export SSH="ssh -i $PEM_FILE ubuntu@$EC2"
export SCP="scp -i $PEM_FILE"
eval "$EXPORT_GO"
