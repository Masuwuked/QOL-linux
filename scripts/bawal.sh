#!/bin/zsh
#
set_wal(){
  wal -i $1
  feh --bg-scale $1
}

get_link(){


  wget $1 -O ~/wallpapers/temp_wal.png
  wal -i ~/wallpapers/temp_wal.png
  feh --bg-scale ~/wallpapers/temp_wal.png

}

help () {
  echo $'| ___ \\     | |  | |     | |'
  echo $'| |_/ / __ _| |  | | __ _| |'
  echo $'| ___ \\/ _` | |/\\| |/ _` | |'
  echo $'| |_/ / (_| \| \/\/ | (_| | |'
  echo $'\\____/ \\__,_|\\/  \\/ \\__,_|_|'
echo ""
echo "BaWal is simple zsh script used to help in changing and managing the wallpapers."
echo ""
echo "Commands:"
echo "      <script> <link> : used to set the wallpaper from a link and save it in /tmp/ "
echo "      <script> <path/to/file.png> : is used to set the wallpaper from a pre-existing image file"

}

if [[ $# == 0 ]]; then 
      echo "error no file or link given as argument"
      exit 1
fi

arg=$1

if [ -f "$arg" ]; then
  
  set_wal $1
elif [[ $1 == https* ]]; then
  get_link $1
elif [[ $1 == -h ]]; then
  help
else
  echo "commad not found :("
fi
