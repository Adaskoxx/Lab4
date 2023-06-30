#!/bin/bash

if [[ "$1" == "--date"  "$1" == "-d" ]]; then
  echo "Today's date: $(date)"
fi

if [[ "$1" == "--logs"  "$1" == "-l" ]]; then
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
elif [["$1" == "--init"  "$1" == "-i"]]; then
    git clone https://github.com/Adaskoxx/Lab4
    export PATH"$PWD:$PATH"
    echo "The repository has been cloned to the current directory".
    echo "The path to the repository added added to the PATH environment variable."

elif [[ "$1" == "--help"  "$1" == "-h" ]]; then
      echo "Available options:"
      echo "--date, -d: Displays today's date."
      echo "--logs, -l <number_files>: Creates the specified number of logx.txt files, containing the file name, script name and date."
    echo "--init, -i: Clones the repository and adds the PATH environment variable."
else
      echo "Unknown option. Use 'script.sh --help' to display available options."
fi