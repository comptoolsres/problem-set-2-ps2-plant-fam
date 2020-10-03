# This script will provide the data to make the table in question 2
# This function will get the number of flights from GNV to another destination airport 
# This function requires the name of the file as the first arg and the destination airport code as the second arg

get_flights_from_GNV () {
	infile="$1"
	destination="$2"
	num_flights=$(cut -d ',' -f 3,7,13 $infile | grep '"GNV","'$destination | wc -l)
	return
}

get_flights_from_GNV flights.May2018-April2020.csv ATL 
echo "The number of flights from GNV to ATL is" $num_flights 

get_flights_from_GNV flights.May2018-April2020.csv CLT
echo "The number of flights from GNV to CLT is" $num_flights

get_flights_from_GNV flights.May2018-April2020.csv MIA
echo "The number of flights from GNV to MIA is" $num_flights

# This function will get the total number of delayed flights (greater than 15 min) to another destination airport 
# THis function requires the nmae of the file as the first arg and the destination airport code as the second arg

get_delayed_flights_from_GNV () {
	infile="$1"
	destination="$2"
	delayed_flights=$(cut -d ',' -f 3,7,13 $infile | grep 'GNV","'$destination'",1' | wc -l)
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
	weather_delays=$(cut -d ',' -f 3,7,24 flights.May2018-April2020.csv | grep 'GNV","'$destination | grep 0 | grep -v "0.00" | wc -l) 
	return 
}

get_delayed_by_weather flights.May2018-April2020.csv ATL
echo "The number of delayed flights to ATL by weather is" $weather_delays

get_delayed_by_weather flights.May2018-April2020.csv CLT
echo "The number of delayed flights to CLT by weather is" $weather_delays

get_delayed_by_weather flights.May2018-April2020.csv MIA
echo "The number of delayed flights to MIA by weather is" $weather_delays 
