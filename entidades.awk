BEGIN {
	sqlBegin = "INSERT INTO entidad (id,nombre,var,abr,abr3) VALUES (";
}
{
	if ( length($0) > 1 ) {
		split($0,a,",");
		printf "%s%2d,\"%s\",\"%s\",\"%s\",\"%s\");\n", sqlBegin, NR , a[1] ,a[2] ,a[3] ,a[4]
	}
}
END {
}


