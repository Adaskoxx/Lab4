#!/bin/bash

if [[ "$1" == "--date" || "$1" == "-d" ]]; then
  date

elif [[ "$1" == "--logs" || "$1" == "-l" ]]; then
  if [[ -n "$2" ]]; then
    num_files=$2
  else
    num_files=100
  fi

  for ((i=1; i<=num_files; i++)); do
    filename="log${i}.txt"
    echo "Filename: $filename" > "$filename"
    echo "Script name: script.sh" >> "$filename"
    echo "Date: $(date)" >> "$filename"
  done

elif [[ "$1" == "--error" || "$1" == "-e" ]]; then
  if [[ -n "$2" ]]; then
    num_files="$2"
  else
    num_files=100
  fi

elif [[ "$1" == "--help" || "$1" == "-h" ]]; then
  echo "Available options:"
  echo "--date, -d: Displays today's date."
  echo "--init, -i: Clones the repository and adds the PATH environment variable."
  echo "--logs, -l <number_files>: Creates the specified number of logx.txt files."
  echo "--error, -e <number_files>: Creates the specified number of errorx.txt files."
elif [[ "$1" == "--help"  "$1" == "-h" ]]; then
      echo "Available options:"
      echo "--date, -d: Displays today's date."
      echo "--logs, -l <number_files>: Creates the specified number of logx.txt files, containing the file name, script name and date."
      echo "--init, -i: Clones the repository and adds the PATH environment variable."
else
  echo "Unknown option. Use 'script.sh -h' to display the available options."
fi
