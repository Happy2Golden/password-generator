#!/usr/bin/env bash
# password_generator.sh
# Usage: ./password_generator.sh length

LENGTH=$1

if [[ -z "$LENGTH" ]]; then
  echo "Usage: $0 length"
  exit 1
fi

# Generate random password
openssl rand -base64 48 | cut -c1-"$LENGTH"

