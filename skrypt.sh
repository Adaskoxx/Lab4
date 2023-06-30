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

  for ((i=1; i<=num_files; i++)); do
    dirname="error${i}"
    mkdir -p "$dirname"
    filename="${dirname}/error${i}.txt"
    echo "Filename: $filename" > "$filename"
    echo "Script name: script.sh" >> "$filename"
    echo "Date: $(date)" >> "$filename"
  done

elif [[ "$1" == "--init" || "$1" == "-i" ]]; then
  git clone https://github.com/Adaskoxx/Lab4
  export PATH="$PWD:$PATH"
  echo "The repository has been cloned to the current directory."
  echo "The path to the repository has been added to the PATH environment variable."

elif [[ "$1" == "--help" || "$1" == "-h" ]]; then
  echo "Available options:"
  echo "--date, -d: Displays today's date."
  echo "--init, -i: Clones the repository and adds the PATH environment variable."
  echo "--logs, -l <number_files>: Creates the specified number of logx.txt files."
  echo "--error, -e <number_files>: Creates the specified number of errorx.txt files."
else
  echo "Unknown option. Use 'script.sh -h' to display the available options."
fi
