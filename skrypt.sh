#!/bin/bash

if [[ "$1" == "--date" ]]; then
  echo "Today's date: $(date)"
fi

if [[ "$1" == "--logs" ]]; then
	if [ -n "$2" ]; then
		count="$2"
	else
		count=100
	fi
	for ((i=1; i<=count;i++));do
    		filename="log${i}.txt"
    		echo "Filename: $filename" >> "$filename"
    		echo "Script name: script.sh" >> "$filename"
    		echo "Date: $(date)" >> "$filename"
  	done
fi