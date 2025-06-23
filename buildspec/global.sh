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

export SSH="ssh -i $PEM_FILE ubuntu@$EC2"
export SCP="scp -i $PEM_FILE"
alias go=go1.24.4
