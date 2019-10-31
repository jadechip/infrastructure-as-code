#!/bin/bash

echo "project_name         = \${PROJECT_NAME}" > terraform.tfvars
echo "gcp_credentials_path = \${CLOUD_CREDENTIALS}" >> terraform.tfvars
echo "region               = \${REGION}" >> terraform.tfvars
echo "zone                 = \${ZONE}" >> terraform.tfvars
echo "ssh_username         = \${SSH_USER}" >> terraform.tfvars
echo "ssh_pub_key_path     = \${SSH_PUBLIC_KEY}" >> terraform.tfvars

vars=(
  "PROJECT_NAME"
  "CLOUD_CREDENTIALS"
  "REGION"
  "ZONE"
  "SSH_USER"
  "SSH_PUBLIC_KEY"
)

args=()

echo "1/6"
read -p 'Enter the project name: ' PROJECT_NAME
args+=($PROJECT_NAME)

echo "2/6"
read -p 'Enter the path of your cloud provider credentials file: ' CLOUD_CREDENTIALS
args+=($CLOUD_CREDENTIALS)

echo "3/6"
read -p 'Enter your desired region (GCP): ' REGION
args+=($REGION)

echo "4/6"
read -p 'Enter your desired zone (GCP): ' ZONE
args+=($ZONE)

echo "5/6"
read -p 'Enter your ssh username: ' SSH_USER
args+=($SSH_USER)

echo "6/6"
read -p 'Enter the path of your public ssh key : ' SSH_PUBLIC_KEY
args+=($SSH_PUBLIC_KEY)


for i in "${!args[@]}"; do
  sed -i "" "s/\${${vars[$i]}}/${args[$i]}/g" terraform.tfvars
done

echo "Done"