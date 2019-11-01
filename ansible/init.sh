#!/bin/bash

echo "1/4 Enter the host name of your Drone server, i.e drone.mydomain.io: "
read DRONE_SERVER_HOST
export DRONE_SERVER_HOST

echo "2/4 Enter your Drone RPC secret: "
read DRONE_RPC_SECRET
export DRONE_RPC_SECRET

echo "3/4 Enter your Github OAuth client ID: "
read DRONE_GITHUB_CLIENT_ID
export DRONE_GITHUB_CLIENT_ID

echo "4/4 Enter your Github OAuth client secret: "
read DRONE_GITHUB_CLIENT_SECRET
export DRONE_GITHUB_CLIENT_SECRET
