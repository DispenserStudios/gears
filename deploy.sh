#!/bin/bash

for folder in */; do
	if [ "$folder" != "./" ]; then
		# if file deploy.sh exists in folder, run it
		if [ -f "$folder/deploy.sh" ]; then
			echo "Running deploy.sh in $folder"
			sleep 1
			cd $folder
			./deploy.sh
			cd ..
		fi
	fi
done
