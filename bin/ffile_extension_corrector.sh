#!/bin/bash

# IFS determins where to seperate the input. By default it seperate on spaces, tabs and newlines
# setting the IFS variable to a new line makes it so that is it will move to the next file only when
# a new line is detected. It ignores spaces and tabs so the file name is not changed
# IFS can also be set to anything (ex: , | ")

IFS=$'\n'
for file in *
do
	# $NF in awk looks at the last column, --mime-type show the type of file and nothing else after it
	extension=`file --mime-type $file | awk '{print tolower($NF)}'`

	# %.* - % means start from the end of the file and work forwards, . is what to look for (start and end
	# and work forward until you find a . then * selects everything after the . (in this case if looks for
	# the file extensions. After the extension is found, the % removes it, stripping away the file extension
	basename=${file%.*}


	if [[ $extension == "text/x-shellscript" ]]; then
		echo "shell script found"

	elif [[ $extension == "image/png" ]]; then
		mv $file $basename.png

	elif [[ $extension == "image/jpeg" ]]; then
		mv $file $basename.jpeg

	elif [[ $extension == "image/jpg" ]]; then
		mv $file $basename.jpg

	elif [[ $extension == "video/webm" ]]; then
		mv $file $basename.webm

	elif [[ $extension == "video/mp4" ]]; then
		mv $file $basename.mp4

	elif [[ $extension == "video/x-matroska" ]]; then
		mv $file $basename.mkv

	elif [[ $extension == "image/gif" ]]; then
		mv $file $basename.gif

	elif [[ $extension == "video/x-ms-asf" ]]; then
		mv $file $basename.wmv

	elif [[ $extension == "video/x-msvideo" ]]; then
		mv $file $basename.avi

	elif [[ $extension == "video/quicktime" ]]; then
		mv $file $basename.mov

	elif [[ $extension == "video/x-m4v" ]]; then
		mv $file $basename.m4v


	else
		echo "$file is not a normal file. Its type is $extension"
	fi
done
