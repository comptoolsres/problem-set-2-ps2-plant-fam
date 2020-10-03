#!/bin/bash

# The following function 
function unique_airport_codes {
	origin=$(sed 's/, / /g' /blue/bsc4452/share/Class_Files/data/flights.1K.csv | cut -f3 -d',' | tail -n +2)
	destination=$(sed 's/, / /g' /blue/bsc4452/share/Class_Files/data/flights.1K.csv | cut -f6 -d',' | tail -n +2)
	unique_codes=$(echo $origin $destination | sed 's/"//g' | tr ' ' '\n' | sort -u)
	return
}

unique_airport_codes
echo $unique_codes
