#!/bin/bash

# unrar_to_dir searches the current folder (non recursivly) for .rar files. When it finds a .rar file 
# it creates a directory with the same name (but with the .rar extension). It then takes the original
# .rar file and move it into the newly created directory

IFS=
while read -r file
do
	filename=$file
	dirname=${file%*.rar}
	mkdir $dirname
	mv $filename $dirname

done <<< $(find . -maxdepth 1 -type f)
