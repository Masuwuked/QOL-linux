#!/bin/zsh


copy(){

xclip -t $2 -selection clipboard < $1

}

if (($# == 0)); then
        echo "No file was selected. :("
        exit 1
fi 

local FILE=$1

if [[ ! -f "$FILE" ]]; then
        echo "error 404 file NOT FOUND!"
        exit 1
fi

if [[ $(file --mime-type -b "$FILE") =~ ^image/ ]]; then
    extension=$(file -b --mime-type $FILE)

      cp $FILE /tmp/image.png
      copy /tmp/image.png image/png
      rm /tmp/image.png
      echo "image yoinked"
else
    cat $FILE | xclip -selection clipboard
    echo "Yoinked!"
fi
