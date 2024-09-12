# Quality Of Life linux

This is a personal collection of my scripts which i use in my setup to make my life easier.

Make sure to ``chmod +x <scriptname>`` them and set ther aliases for better accessibility

# Installation
1. clone this repository using ``git``
2. copy the scripts folder to your home directory.
3. copy the aliases from ``aliases.txt`` and add them in your ``.zshrc``

### Yoink 
#### pre requisites: [xclip](https://github.com/astrand/xclip)
#### This is a simple script which can be used to copy the contents of a text or a file with ascii data or if the file is an image to your clipboard.

Assuming the alias for yoink.sh is ``yoink``
To use it just do:
```bash
yoink <path_to_filename>
```
#### This script converts any input image files to a png image which temporarily stored in /tmp/ then its copied to your clipboard 

### Shot
#### pre requisites: [scrot](https://github.com/resurrecting-open-source-projects/scrot)
#### A small script to take a screenshot of selected area of the screen then copying it to your clipboard. Its usage is simple:

Assuming the alias for the shot.sh is ``shot``
to use it just do:
```bash
shot
```
or you could just set a keybind to run the script

### Bawal
