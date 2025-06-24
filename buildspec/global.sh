#!/bin/bash
export PEM_FILE="/tmp/hygo.pem"
export ENV_FILE=/tmp/hygofit.env
export SSH_OPT="StrictHostKeyChecking=no"
export EC2="ec2-54-153-41-124.us-west-1.compute.amazonaws.com"

dossh() {
	ssh -o "$SSH_OPT" -i "$PEM_FILE" "ubuntu@$EC2" "$1"
}

scpto() {
	scp -o "$SSH_OPT" -i "$PEM_FILE" "$1" "ubuntu@$EC2:$2"
}

setup() {
	source_env
	source_nvm
	export_go
}
