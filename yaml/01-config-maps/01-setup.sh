#!/bin/bash

# Prompt the user for the vCenter host
read -p 'Enter the vCenter host: ' VCENTER_HOST

# Prompt the user for the vCenter username
read -p 'Enter the vCenter username: ' VCENTER_USERNAME

# Prompt the user for the password
read -sp 'Enter the vCenter password: ' VCENTER_PASSWORD
echo

# Base64 encode the password
ENCODED_PASSWORD=$(echo -n "$VCENTER_PASSWORD" | base64)

# Update the YAML file with the encoded password
yaml_file="vcenter.yaml"

# Use sed to replace the placeholders with the user input
sed -i.bak -e "s|VCENTER_HOST: .*|VCENTER_HOST: \"$VCENTER_HOST\"|" \
           -e "s|VCENTER_USERNAME: .*|VCENTER_USERNAME: \"$VCENTER_USERNAME\"|" \
           -e "s|VCENTER_PASSWORD: .*|VCENTER_PASSWORD: \"$ENCODED_PASSWORD\"|" $yaml_file

echo "vCenter host, username, and password updated successfully in $yaml_file"
