#cat /blue/bsc4452/share/Class_Files/data/flights.1K.csv| wc
#cat /blue/bsc4452/share/Class_Files/data/flights.1K.csv| cut -f3,7,13 -d,| grep 1.00 | wc
#I used these to test if things were working properly 

#cat /blue/bsc4452/share/Class_Files/data/flights.May2018-April2020.csv| wc
cat /blue/bsc4452/share/Class_Files/data/flights.May2018-April2020.csv| cut -f3,7,13 -d,| grep 1.00 | grep GNV| wc
#If you see something wrong, I'll make all changes
