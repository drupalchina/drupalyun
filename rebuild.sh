#!/usr/bin/env bash

if [ "$1" == "" ]; then
	set $1 "html"
fi

drush make drupalyun.make $1
