#!/bin/bash

# Simple Interest Calculator
# This script computes simple interest based on user input
# Input fields: principal, rate of interest, and time period

echo "Simple Interest Calculator"
echo "============================"

# Input principal amount
echo -n "Enter Principal amount: "
read principal

# Input rate of interest
echo -n "Enter Rate of Interest (per annum): "
read rate

# Input time period
echo -n "Enter Time Period (in years): "
read time

# Calculate simple interest
# Formula: SI = (P * R * T) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount
# Total = Principal + Simple Interest
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display results
echo ""
echo "===== RESULTS ====="
echo "Principal: Rs. $principal"
echo "Rate of Interest: $rate% per annum"
echo "Time Period: $time years"
echo "Simple Interest: Rs. $simple_interest"
echo "Total Amount: Rs. $total_amount"
echo "==================="
