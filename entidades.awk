BEGIN {
	sqlBegin = "INSERT INTO entidad (id,nombre,var,abr,abr3) VALUES (";
}
{
	if ( length($0) > 1 )
		printf "%s%2d,%s%s", sqlBegin, NR , $0 , ");\n"
}
END {
}


