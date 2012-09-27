BEGIN {
	sqlBegin = "INSERT INTO summary (time_stamp,date_stamp,";
	timeStr = ""
	dateStr = ""
	tablesStr = ""
	valuesStr = ""
	sqlEnd = ");\n"
}
{
	if ( NR == 1 ) {
		timeStr = $0
	} 
	if ( NR == 2 ) {
		dateStr = $0
	} 	
	if ( NR == 3 ) {
		tablesStr = $0
	}
	if ( NR == 4 ) {
		valuesStr = $0
	}  
}
END {
	printf "%s%s) VALUES (\"%s\",\"%s\",%s%s", sqlBegin,tablesStr, timeStr, dateStr,valuesStr, sqlEnd
	
	printf "\n\n.mode csv voto\n"
	printf ".import ./dataife.csv voto\n"

}

