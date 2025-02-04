#!/bin/bash

# Check if an argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <name>"
  exit 1
fi

# Print the greeting
echo "Hello, $1!"
