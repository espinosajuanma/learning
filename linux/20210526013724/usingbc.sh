#!/bin/sh

echo "2*2" | bc # Prints 4

four=$(echo "2*2" | bc)
echo "$four"

