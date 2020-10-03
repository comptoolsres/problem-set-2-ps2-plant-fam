echo "The number of flights from GNV to ATL is:"
cut -f3,7,13 -d, /blue/bsc4452/share/Class_Files/data/flights.May2018-April2020.csv | grep '"GNV","ATL"' | wc -l
echo "The number of flights from GNV to CLT is:" 
cut -f3,7,13 -d, /blue/bsc4452/share/Class_Files/data/flights.May2018-April2020.csv | grep '"GNV","CLT"' | wc -l
echo "The number of flights from GNV to MIA is:"
cut -f3,7,13 -d, /blue/bsc4452/share/Class_Files/data/flights.May2018-April2020.csv | grep '"GNV","MIA"' | wc -l
echo "The number of delayed flights to ATL is:" 
cut -d ',' -f 3,7,13 /blue/bsc4452/share/Class_Files/data/flights.May2018-April2020.csv | grep '"GNV","ATL",1' | wc -l
echo "The number of delayed flights to CLT is:" 
cut -d ',' -f 3,7,13 /blue/bsc4452/share/Class_Files/data/flights.May2018-April2020.csv | grep '"GNV","CLT",1' | wc -l
echo "The number of delayed flights to MIA is:" 
cut -d ',' -f 3,7,13 /blue/bsc4452/share/Class_Files/data/flights.May2018-April2020.csv | grep '"GNV","MIA",1' | wc -l
echo "The number of delayed flights to ATL by weather is:"
cat /blue/bsc4452/share/Class_Files/data/flights.May2018-April2020.csv| cut -f3,7,24 -d,| grep '"GNV","' |grep ATL|grep 0| grep -v 0.00| wc -l
echo "The number of delayed flights to CLT by weather is:" 
cat /blue/bsc4452/share/Class_Files/data/flights.May2018-April2020.csv| cut -f3,7,24 -d,| grep '"GNV","' |grep CLT|grep 0| grep -v 0.00| wc -l
echo "The number of delayed flights to MIA by weather is:" 
cat /blue/bsc4452/share/Class_Files/data/flights.May2018-April2020.csv| cut -f3,7,24 -d,| grep '"GNV","' |grep MIA|grep 0| grep -v 0.00| wc -l
