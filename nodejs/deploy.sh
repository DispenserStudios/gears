#!/bin/bash

for folder in */; do
	if [ "$folder" != "./" ]; then
		FOLD=$(echo "$folder" | sed 's:/*$::')
		echo "Deploying $FOLD"
		docker buildx build -t jqcr.gq/gears/node:$FOLD -f $FOLD/Dockerfile . --push
	fi
done
