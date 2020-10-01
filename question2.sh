# This script will provide the data to make the table in question 2
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
#I don't even know if there's anything I could add - that thing looks really good
#cut -f3,7,13 -d, /blue/bsc4452/share/Class_Files/data/flights.May2018-April2020.csv | grep '"GNV","ATL"' | wc
