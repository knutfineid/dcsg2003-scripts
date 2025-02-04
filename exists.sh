#!/bin/bash

# Run the command provided as arguments to the script
"$@"

# Capture the exit status
exit_status=$?

# Check the exit status using an if statement
if [ $exit_status -eq 0 ]; then
    echo "The command succeeded with exit status: $exit_status"
else
    echo "The command failed with exit status: $exit_status"
fi
