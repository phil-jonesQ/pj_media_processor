#!/bin/bash -x

source /etc/profile

path=~/incoming/
Movie_file_regex=*Movie_20*
TV_file_regex=*TV_20*
Movie_destination=/media001/Movies/2020/
TV_destination=/media001/Movies/TVShows/

cd $path
for i in $(find . -iname "$Movie_file_regex" -not -path '*/\.*') ; do
	touch .detected_movie_files
	echo "Detected and moving movie file to media location.."
	mv -v $i $Movie_destination
done

for i in $(find . -iname "$TV_file_regex" -not -path '*/\.*') ; do
	touch .detected_movie_files
	echo "Detected and moving TV file to media location.."
	mv -v $TV_file_regex $TV_destination 
done

