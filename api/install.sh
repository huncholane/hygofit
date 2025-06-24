#!/bin/sh
set -e

# Copy binary
install -m 755 main /usr/local/bin/hygofit

# Copy service file
install -m 644 hygofit.service /etc/systemd/system/hygofit.service

# Copy env file
install -m 600 hygofit.env /etc/hygofit.env

# Make working directory
sudo mkdir -p /usr/local/hygofit

# Enable and start the service
systemctl daemon-reload
systemctl enable hygofit.service --now
