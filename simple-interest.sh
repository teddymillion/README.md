#!/bin/bash

echo "==============================="
echo "     Simple Interest Calculator"
echo "==============================="

# Taking user input
read -p "Enter Principal amount: " principal
read -p "Enter Rate of Interest (% per year): " rate
read -p "Enter Time period (in years): " time

# Validate input (basic check)
if [[ -z "$principal" || -z "$rate" || -z "$time" ]]; then
    echo "Error: All fields are required."
    exit 1
fi

# Calculate Simple Interest
# Formula: SI = (P * R * T) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo "--------------------------------"
echo "Principal: $principal"
echo "Rate: $rate%"
echo "Time: $time years"
echo "--------------------------------"
echo "Simple Interest = $simple_interest"
echo "--------------------------------"
