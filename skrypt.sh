#!/bin/bash

if [[ "$1" == "--date" ]]; then
  echo "Today's date: $(date)"
elif [[ "$1" == "--logs" ]]; then
  for ((i=1; i<=100; i++))
  do
    filename="log${i}.txt"
    echo "Filename: $filename" >> "$filename"
    echo "Script name: script.sh" >> "$filename"
    echo "Date: $(date)" >> "$filename"
  done
fi