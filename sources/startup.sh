#!/bin/sh
#
# Run postgresql on startup

# Start postgresql
echo "Starting postgres..."
sudo /etc/init.d/postgresql start
echo "Started postgres"
