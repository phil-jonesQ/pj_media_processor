#!/bin/bash

source=$(echo $1|sed 's/ //g')

destination=Movie_2020_$source

mv -v "./$1" $destination
