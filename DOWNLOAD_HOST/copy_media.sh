#!/bin/bash

media_server=192.168.1.253
media_file=$1
media_location=/home/philjones/incoming/
user=philjones

echo "Copying $media_file to $media_server$media_location"

rsync -avP $media_file $user@$media_server:$media_location
