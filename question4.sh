#!/bin/bash

#This script will list the cities in Florida that have airports in the dataset

#This first function will *print* the cities 
list_cities () {
	FILE="$1"
	STATE="$2"
	city=$(cut -d ',' -f 4,5 $FILE | sort | uniq | grep $STATE | cut -d ',' -f 1 | cat | sed 's/"//g')
	echo $city
	return
}

list_cities flights.1K.csv FL 

#This second function will *list* the cities, and is a more general function but requires a more detailed input

#get_FL_cities flights.1K.csv

#!/bin/bash

#list_cities () {
#	echo $@
#}

#list_cities $(cat flights.1K.csv | cut -d ',' -f 4,5 flights.1K.csv | sort | uniq | grep "FL" | cut -d ',' -f 1 | cat)


