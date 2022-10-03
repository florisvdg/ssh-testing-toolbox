#!/bin/sh
echo "Enter your public key:"
read -r PUBLIC_KEY

for dir in config/*; do
  authorized_keys="$dir/.ssh/authorized_keys"
  echo "Adding public key to $authorized_keys"

  mkdir -p "$(dirname "$authorized_keys")"
  echo "$PUBLIC_KEY" >> "$authorized_keys"
done
