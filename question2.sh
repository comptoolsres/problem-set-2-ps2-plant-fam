# This script will provide the data to make the table in question 2
# This function will get the number of flights from GNV to another destination airport 
# This function requires the name of the file as the first arg and the destination airport code as the second arg

get_flights_from_GNV () {
	infile="$1"
	destination="$2"
	num_flights=$(grep -E '^[0-9\-]*,\"[A-Z\"]*,\"GNV' $infile | grep $destination | cut -d ',' -f 21 | paste -sd+ | bc)
	return
}

get_flights_from_GNV flights.May2018-April2020.csv ATL 
echo "The number of flights from GNV to ATL is" $num_flights 

get_flights_from_GNV flights.May2018-April2020.csv CLT
echo "The number of flights from GNV to CLT is" $num_flights

get_flights_from_GNV flights.May2018-April2020.csv MIA
echo "The number of flights from GNV to MIA is" $num_flights

# This function will get the total number of delayed flights (greater than 15 min) to another destination airport 
# This function requires the name of the file as the first arg and the destination airport code as the second arg

get_delayed_flights_from_GNV () {
	infile="$1"
	destination="$2"
	delayed_flights=$(grep -E '^[0-9\-]*,\"[A-Z\"]*,\"GNV' $infile | grep $destination | cut -d ',' -f 13 | grep '1.00' | wc | cut -d ' ' -f 5)
	return
}

get_delayed_flights_from_GNV flights.May2018-April2020.csv ATL
echo "The number of delayed flights to ATL is" $delayed_flights

get_delayed_flights_from_GNV flights.May2018-April2020.csv CLT
echo "The number of delayed flights to CLT is" $delayed_flights

get_delayed_flights_from_GNV flights.May2018-April2020.csv MIA
echo "The number of delayed flights to MIA is" $delayed_flights

# This function will get the total number of flights delayed by weather, where the time of delay is greater than or equal to 1 minute from GNV
# This function requires the name of the file as the first arg and the destination airport code as the second arg

get_delayed_by_weather () {
	infile="$1"
	destination="$2"
	weather_delays=$(grep -E '^[0-9\-]*,\"[A-Z\"]*,\"GNV' $infile | grep $destination | cut -d ',' -f 24 | grep -E [1-9]+ | wc | cut -d ' ' -f 6) 
	return 
}

get_delayed_by_weather flights.May2018-April2020.csv ATL
echo "The number of delayed flights to ATL by weather is" $weather_delays

get_delayed_by_weather flights.May2018-April2020.csv CLT
echo "The number of delayed flights to CLT by weather is" $weather_delays

get_delayed_by_weather flights.May2018-April2020.csv MIA
echo "The number of delayed flights to MIA by weather is" $weather_delays 


#I don't even know if there's anything I could add - that thing looks really good
#I used this code to test the values obtained with the code above
#cut -f3,7,13 -d, /blue/bsc4452/share/Class_Files/data/flights.May2018-April2020.csv | grep '"GNV","ATL"' | wc

# Attempt to create a branch; this is a working code but it it way way too slow
#honestly, I got a lot of help from Dr. Gitzendanner to get it properly working - but he kinda liked the idea . It is impossibly slow
#GNV_ATL_tot=0
#file = cat /blue/bsc4452/share/Class_Files/data/flights.May2018-April2020.csv
#while read line
#do 
#	depart = `echo $line | awk -F, '{print $3}'`
#	arrive= `echo $line | awk -F, '{print $7}'`
#	delay = `echo $line | awk -F, '{print $13}'`
#	if ["$depart" == '"GNV"']
#	then
#		if["$arrive == '"ATL"']
#			echo $depart $arrive %delay
#			GNV_ATL_tot = $((GNV_ATL_tot + 1))
#			echo Total flights $GNV_ATL_tot 
#		fi
#	fi
#done < "$file"
#I was testing this line out as a beggining for the second question, but then I saw your line Jessie. 

