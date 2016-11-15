#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
	echo "Needs argument of theme"
	exit -1
elif [[ ! -f rc.lua.$1 ]]; then
	echo "Theme does not exist"
	exit -1
fi

FILE=rc.lua.$1

mv --backup=numbered rc.lua rc.lua.previous
cp $FILE rc.lua
