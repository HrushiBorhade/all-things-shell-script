#!/bin/bash

# Simple function with no parameters
greet() {
    echo "Hello from the greet function!"
}

# Function with parameters
calculate_sum() {
    local num1=$1    # First parameter
    local num2=$2    # Second parameter
    echo $((num1 + num2))
}

# Function that demonstrates variable scope
demonstrate_scope() {
    local local_var="I am local"    # Local variable
    global_var="I am global"        # Global variable
    echo "Inside function: $local_var"
    echo "Inside function: $global_var"
}

# Function that returns a value using return
is_even() {
    if [ $(($1 % 2)) -eq 0 ]; then
        return 0    # Success (true in shell)
    else
        return 1    # Failure (false in shell)
    fi
}

# Main script execution starts here
echo "=== Function Demo Script ==="
echo

echo "1. Calling simple function:"
greet
echo

echo "2. Function with parameters:"
result=$(calculate_sum 10 20)
echo "Sum of 10 and 20 is: $result"
echo

echo "3. Variable scope demonstration:"
demonstrate_scope
echo "Outside function: $global_var"
echo "Outside function: $local_var (this will be empty)"
echo

echo "4. Function with return value:"
number=4
if is_even $number; then
    echo "$number is even"
else
    echo "$number is odd"
fi
