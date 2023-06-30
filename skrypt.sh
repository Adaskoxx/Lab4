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

if [[ "$1" == "--help" ]]; then
  	echo "Available options:"
  	echo "--date: Displays today's date."
  	echo "--logs <number_files>: Creates the specified number of logx.txt files, containing the file name, script name and date."
else
  	echo "Unknown option. Use 'script.sh --help' to display available options."
fi