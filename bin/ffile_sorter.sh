#!/usr/bin/env bash

# in order for the script to be able to read files containing spaces
# IFS needs to be set to nothing and the -r flag needs to be used
# with read

IFS=
while read -r file
do
	# checks the files extenstion to see which folder it need to 
	# be placed into

	extension=${file##*.}

	# Makes the directory if it does not exist. If it does exist
	# an error with be thrown, but this is redirected to /dev/null
	# it then places the file in its appropriate directory

	if [[ $extension == "jpeg" ]]; then
		mkdir pics 2> /dev/null
		mv "$file" pics

	elif [[ $extension == "jpg" ]]; then
		mkdir pics 2> /dev/null
		mv $file pics
	
	elif [[ $extension == "png" ]]; then
		mkdir pics 2> /dev/null
		mv $file pics

	elif [[ $extension == "bmp" ]]; then
		mkdir pics 2> /dev/null
		mv $file pics

	elif [[ $extension == "gif" ]]; then
		mkdir gifs 2> /dev/null
		mv $file gifs

	elif [[ $extension == "mp4" ]]; then
		mkdir vids 2> /dev/null
		mv $file vids

	elif [[ $extension == "webm" ]]; then
		mkdir vids 2> /dev/null
		mv $file vids
	
	elif [[ $extension == "wmv" ]]; then
		mkdir vids 2> /dev/null
		mv $file vids

	elif [[ $extension == "avi" ]]; then
		mkdir vids 2> /dev/null
		mv $file vids

	elif [[ $extension == "mkv" ]]; then
		mkdir vids 2> /dev/null
		mv $file vids

	elif [[ $extension == "mov" ]]; then
		mkdir vids 2> /dev/null
		mv $file vids

	elif [[ $extension == "flv" ]]; then
		mkdir vids 2> /dev/null
		mv $file vids

	elif [[ $extension == "mpg" ]]; then
		mkdir vids 2> /dev/null
		mv $file vids

	elif [[ $extension == "mp3" ]]; then
		mkdir audio 2> /dev/null
		mv $file audio

	elif [[ $extension == "wav" ]]; then
		mkdir audio 2> /dev/null
		mv $file audio

	elif [[ $extension == "m4a" ]]; then
		mkdir audio 2> /dev/null
		mv $file audio

fi
done <<< $(find . -maxdepth 1 -type f)
