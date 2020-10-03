#!/bin/bash
# get_delayed_flights: using user input, get the number of delayed flights into or out of Gainesville 
echo -n "Please enter an airport code -> "
read int

cat flights.May2018-April2020.csv | cut -f3,7,13 -d ',' | grep 1.00 | grep $int | wc -l
	

