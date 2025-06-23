#!/bin/bash
export PEM_FILE="/tmp/hygo.pem"
export ENV_FILE=/tmp/hygofit.env

if [ -f "$ENV_FILE" ]; then
	echo "Loading environment variables"
	cat "$ENV_FILE"
	set -a
	source "$ENV_FILE"
	set +a
fi

if [ -f "$HOME/.nvm/nvm.sh" ]; then
	\. "$HOME/.nvm/nvm.sh"
fi

export SSH="ssh -i $PEM_FILE ubuntu@$EC2"
export SCP="scp -i $PEM_FILE"
export PATH=$PATH:/usr/local/go/bin
