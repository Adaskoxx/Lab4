#!/bin/bash

if [ "$1" = "--date" ]; then
    current_date=$(date +%F)
    echo "Today is: $current_date"
else
    echo "Try: skrypt.sh --date"
fi