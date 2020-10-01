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
echo $num_flights 

get_flights_from_GNV flights.May2018-April2020.csv CLT
echo $num_flights

get_flights_from_GNV flights.May2018-April2020.csv MIA
echo $num_flights

