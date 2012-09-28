#!/bin/bash

TMP_FILE='/tmp/ife.sql.tmp'

head -n 4 presidente.txt  | sed -f replace_commas.sed > summary.txt
tail -n +7 presidente.txt | sed -f replace_commas.sed > dataife.csv
awk -f entidades.awk entidades.dat > entidades.sql
awk -f summary.awk summary.txt > summary.sql

cat schema.sql > $TMP_FILE
cat entidades.sql >> $TMP_FILE
cat summary.sql >> $TMP_FILE

# insert into SQLite
cat $TMP_FILE | sqlite3 $1

# EOF