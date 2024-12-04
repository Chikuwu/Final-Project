#!/bin/bash

# This script calculates Simple Interest.
# Formula: SI = (Principal * Rate * Time) / 100

# Prompt the user for inputs
echo "Enter the Principal amount:"
read principal
echo "Enter the Rate of Interest (in %):"
read rate
echo "Enter the Time (in years):"
read time

# Validate inputs
if [[ -z "$principal" || -z "$rate" || -z "$time" ]]; then
    echo "Error: All inputs are required."
    exit 1
fi

if ! [[ "$principal" =~ ^[0-9]+(\.[0-9]+)?$ ]] || \
   ! [[ "$rate" =~ ^[0-9]+(\.[0-9]+)?$ ]] || \
   ! [[ "$time" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Error: Please enter valid numerical values."
    exit 1
fi

# Calculate Simple Interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Output the result
echo "The Simple Interest is: $simple_interest"
