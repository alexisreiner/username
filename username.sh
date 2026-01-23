#!/bin/bash

# Username validation script

regex='^[a-z][a-z0-9_]{2,11}$'

echo "Username Rules:"
echo "- Only lowercase letters, digits, and underscores allowed"
echo "- Must start with a lowercase letter"
echo "- Must be between 3 and 12 characters long"
echo ""

while true; do
    echo -n "Enter a username: "
    read -r username


    if [[ $username =~ $regex ]]; then
        echo "Valid username. Thank you!"
        break
    else
        echo "Invalid username. Please try again."
        echo ""
    fi
done




