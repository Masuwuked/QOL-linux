#!/bin/bash

FILE_PATH="$1"

if [ -z "$FILE_PATH" ]; then
  echo "Usage: $0 path_to_file"
  exit 1
fi

if [ ! -f "$FILE_PATH" ]; then
  echo "File not found: $FILE_PATH"
  exit 1
fi

response=$(curl -s -X POST https://0x0.st -F "file=@${FILE_PATH}")


echo "Response from server:"
echo "$response"
echo "The url has been copied!"
echo "$response" | xclip -selection clipboard

