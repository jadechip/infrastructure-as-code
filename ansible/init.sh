#!/bin/bash

echo "1/4"
read -p 'Enter the host name of your Drone server, i.e drone.mydomain.io: ' DRONE_SERVER_HOST
export DRONE_SERVER_HOST

echo "2/4"
read -p 'Enter your Drone RPC secret: ' DRONE_RPC_SECRET
export DRONE_RPC_SECRET

echo "3/4"
read -p 'Enter your Github OAuth client ID: ' DRONE_GITHUB_CLIENT_ID
export DRONE_GITHUB_CLIENT_ID

echo "4/4"
read -p 'Enter your Github OAuth client secret: ' DRONE_GITHUB_CLIENT_SECRET
export DRONE_GITHUB_CLIENT_SECRET
