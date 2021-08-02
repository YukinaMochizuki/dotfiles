#!/bin/bash

metadata=$(playerctl metadata --format '{{ title }} - {{ artist }} ' 2>&1)

if [ "$metadata" = "No player could handle this command" ]; then
	echo "  Working... "
elif [ "$metadata" = "No players found" ]; then
	echo "  Working... "
else
	echo "   $metadata "
fi
